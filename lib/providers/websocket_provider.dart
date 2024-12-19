import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/config/env.dart';
import 'package:webtoon_mobile/models/notification/notification.model.dart';
import 'package:webtoon_mobile/providers/notification/notification_provider.dart';
import 'package:webtoon_mobile/services/token_service.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';
import 'package:webtoon_mobile/models/chat_message/chat_response.model.dart';
import 'package:webtoon_mobile/providers/chat/chat_provider.dart';
import 'package:webtoon_mobile/providers/chat/chat_room_provider.dart';
import 'package:webtoon_mobile/models/chat_room/chat_room.model.dart'
    as chat_room;
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:convert';
import 'dart:async';

final socketProvider = Provider.autoDispose<IO.Socket?>((ref) {
  return null;
});

class SocketController extends StateNotifier<IO.Socket?> {
  final Ref ref;
  final TokenService _tokenService;
  bool _isConnecting = false;
  WebSocketChannel? _socket;
  Timer? _reconnectTimer;

  SocketController(this.ref, this._tokenService) : super(null);

  Future<void> connect() async {
    if (_isConnecting) {
      return;
    }

    _isConnecting = true;

    try {
      _forceDisconnect();

      await Future.delayed(const Duration(milliseconds: 1000));

      final token = await _tokenService.getAccessToken();
      if (token == null) {
        _isConnecting = false;
        return;
      }
      final socket = IO.io(
        Env.wsUrl,
        IO.OptionBuilder()
            .setExtraHeaders({
              'Authorization': 'Bearer $token',
              'Connection': 'Upgrade',
              'Upgrade': 'websocket',
              'Sec-WebSocket-Version': '13',
              'Sec-WebSocket-Extensions':
                  'permessage-deflate; client_max_window_bits'
            })
            .setTransports(['websocket'])
            .disableAutoConnect()
            .enableForceNewConnection()
            .build(),
      );

      socket.onConnect((_) {
        socket.emit('join', {'message': 'Client connected'});

        socket.on('initializeSocket', (data) {
          if (data != null) {
            if (data['publicMessages'] is List) {
              ref.read(chatProvider.notifier).setPreviousMessages(
                    (data['publicMessages'] as List)
                        .map((e) => ChatMessage.fromJson(e))
                        .toList(),
                  );
            }

            if (data['unreadNotifications'] is List) {
              ref.read(notificationProvider.notifier).setNotifications(
                    (data['unreadNotifications'] as List)
                        .map((e) => NotificationModel.fromJson(e))
                        .toList(),
                  );
            }

            if (data['rooms'] is List) {
              ref.read(chatRoomProvider.notifier).setRooms(
                    (data['rooms'] as List)
                        .map((e) => chat_room.ChatRoom.fromJson(e))
                        .toList(),
                  );
            }
          }
        });

        socket.on('newMessage', (data) {
          if (data != null) {
            try {
              final message = ChatMessage.fromJson(data);
              final currentUser = ref.read(authStateProvider).value;

              if (currentUser != null && message.sender.id == currentUser.id) {
                return;
              }

              ref.read(chatProvider.notifier).addMessage(
                    ChatMessageUI(message: message),
                  );
            } catch (e) {
              print('Error parsing message: $e');
            }
          }
        });

        socket.on('messageAck', (data) {
          if (data != null) {
            try {
              final tempId = data['tempId'] as String;
              final messageData = data['message'] as Map<String, dynamic>;
              final roomData = data['room'] as Map<String, dynamic>;

              if (messageData['roomId'] is Map) {
                // Private message
                final roomId = (messageData['roomId']
                    as Map<String, dynamic>)['_id'] as String;
                messageData['roomId'] = roomId;

                if (messageData['readBy'] is List) {
                  final readByData = messageData['readBy'] as List;
                  messageData['readBy'] = readByData
                      .map((user) =>
                          (user as Map<String, dynamic>)['_id'] as String)
                      .toList();
                }

                final message = PrivateChatMessage.fromJson(messageData);

                // Cập nhật tin nhắn tạm thời thành tin nhắn chính thức
                ref
                    .read(privateChatProvider.notifier)
                    .updateMessage(tempId, message);

                // Cập nhật room nếu có thay đổi
                if (roomData != null) {
                  final room = chat_room.ChatRoom.fromJson(roomData);
                  ref.read(chatRoomProvider.notifier).updateRoomData(room);

                  // Cập nhật latestMessage cho room
                  ref.read(chatRoomProvider.notifier).updateLatestMessage(
                        message.roomId,
                        message.content,
                        message.sender,
                        message.createdAt,
                      );
                }

                // Broadcast tin nhắn cho tất cả người dùng trong room
                state?.emit('broadcastPrivateMessage', {
                  'roomId': message.roomId,
                  'message': messageData,
                  'room': roomData,
                });
              } else {
                // Public message
                final message = ChatMessage.fromJson(messageData);
                ref.read(chatProvider.notifier).removeMessage(tempId);
                ref.read(chatProvider.notifier).addMessage(
                      ChatMessageUI(message: message),
                    );
              }
            } catch (e) {
              print('Error handling messageAck: $e');
            }
          }
        });

        socket.on('messageError', (data) {
          if (data != null) {
            try {
              final tempId = data['tempId'] as String?;
              final error = data['error'] as String?;
              final roomType = data['roomType'] as String?;

              if (tempId != null && error != null && roomType != null) {
                if (roomType == 'public') {
                  ref.read(chatProvider.notifier).handleMessageError(
                        MessageErrorResponse(
                          tempId: tempId,
                          error: error,
                          roomType: roomType,
                        ),
                      );
                } else {
                  ref.read(privateChatProvider.notifier).removeMessage(tempId);
                }
              }
            } catch (e) {
              // Ignore error
            }
          }
        });

        socket.on('notification', (data) {
          if (data != null) {
            ref.read(notificationProvider.notifier).addNotification(
                  NotificationModel.fromJson(data),
                );
          }
        });

        socket.on('openedPrivateRoom', (data) {
          if (data != null && data['messages'] is List) {
            final messages = (data['messages'] as List)
                .map((e) => PrivateChatMessage.fromJson(e))
                .toList();
            ref.read(privateChatProvider.notifier).setMessages(
                  messages
                      .map((msg) => PrivateChatMessageUI(
                            message: msg,
                            tempId: null,
                            isSending: false,
                          ))
                      .toList(),
                );
          }
        });

        socket.on('newPrivateMessage', (data) {
          if (data != null) {
            try {
              final messageData = data['message'] as Map<String, dynamic>;
              final roomData = data['room'] as Map<String, dynamic>;
              final currentUser = ref.read(authStateProvider).value;

              // Nếu là tin nhắn của người dùng hiện tại, bỏ qua vì đã được thêm khi gửi
              if (currentUser != null &&
                  messageData['sender'] is Map &&
                  (messageData['sender'] as Map<String, dynamic>)['_id'] ==
                      currentUser.id) {
                return;
              }

              if (messageData['roomId'] is Map) {
                final roomId = (messageData['roomId']
                    as Map<String, dynamic>)['_id'] as String;
                messageData['roomId'] = roomId;
              }

              if (messageData['readBy'] is List) {
                final readByData = messageData['readBy'] as List;
                messageData['readBy'] = readByData
                    .map((user) =>
                        (user as Map<String, dynamic>)['_id'] as String)
                    .toList();
              }

              final message = PrivateChatMessage.fromJson(messageData);

              // Thêm tin nhắn vào state ngay lập tức
              ref.read(privateChatProvider.notifier).addMessage(
                    PrivateChatMessageUI(
                      message: message,
                      tempId: null,
                      isSending: false,
                    ),
                  );

              // Cập nhật room nếu có thay đổi
              if (roomData != null) {
                final room = chat_room.ChatRoom.fromJson(roomData);
                ref.read(chatRoomProvider.notifier).updateRoomData(room);
              }

              // Cập nhật latestMessage cho room
              ref.read(chatRoomProvider.notifier).updateLatestMessage(
                    message.roomId,
                    message.content,
                    message.sender,
                    message.createdAt,
                  );
            } catch (e) {
              print('Error handling newPrivateMessage: $e');
            }
          }
        });
      });

      socket.onDisconnect((_) {
        _forceDisconnect();
      });

      socket.onError((error) {
        if (error.toString().contains('401')) {
          _forceDisconnect();
        }
      });

      state = socket;
      socket.connect();
    } catch (e) {
      _isConnecting = false;
      rethrow;
    } finally {
      _isConnecting = false;
    }
  }

  void _forceDisconnect() {
    _socket?.sink.close();
    _socket = null;
    state = null;
  }

  void disconnect() {
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    _socket?.sink.close();
    _socket = null;
    state = null;
    _isConnecting = false;
  }

  @override
  void dispose() {
    disconnect();
    super.dispose();
  }

  String? sendChatMessage(String content) {
    if (state == null || !state!.connected) {
      return null;
    }

    final tempId = const Uuid().v4();
    state?.emit('sendPublicMessage', {
      'content': content,
      'tempId': tempId,
    });

    return tempId;
  }

  String? sendPrivateMessage(String roomId, String content) {
    if (state == null || !state!.connected) {
      return null;
    }

    final tempId = const Uuid().v4();
    final currentUser = ref.read(authStateProvider).value;
    if (currentUser == null) return null;

    final room = ref.read(roomByIdProvider(roomId));
    if (room == null) return null;

    final receiverId = room.participants.firstWhere(
      (id) => id != currentUser.id,
      orElse: () => room.participants.first,
    );

    // Thêm tin nhắn tạm thời vào state trước
    final tempMessage = PrivateChatMessageUI(
      message: PrivateChatMessage(
        id: tempId,
        roomId: roomId,
        sender: ChatUser(
          id: currentUser.id,
          name: currentUser.name,
          avatarUrl: currentUser.avatarUrl,
        ),
        content: content.trim(),
        readBy: [currentUser.id],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        version: 0,
      ),
      tempId: tempId,
      isSending: true,
    );

    ref.read(privateChatProvider.notifier).addMessage(tempMessage);

    // Gửi tin nhắn với format giống web
    state?.emit('sendPrivateMessage', {
      'tempId': tempId,
      'content': content.trim(),
      'receiverId': receiverId,
      'roomId': roomId, // Thêm roomId để server có thể xử lý
    });

    return tempId;
  }

  void openPrivateRoom(String roomId) {
    if (state == null || !state!.connected) return;

    state?.emit('openPrivateRoom', {
      'roomId': roomId,
    });
  }

  void leavePrivateRoom(String roomId) {
    if (state == null || !state!.connected) return;

    state?.emit('leavePrivateRoom', {
      'roomId': roomId,
    });
  }
}

final socketControllerProvider =
    StateNotifierProvider<SocketController, IO.Socket?>((ref) {
  return SocketController(ref, ref.watch(tokenServiceProvider));
});

final socketConnectionProvider = Provider<bool>((ref) {
  final socket = ref.watch(socketControllerProvider);
  return socket?.connected ?? false;
});
