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
import 'package:uuid/uuid.dart';

final socketProvider = Provider.autoDispose<IO.Socket?>((ref) {
  return null;
});

class SocketController extends StateNotifier<IO.Socket?> {
  final Ref ref;
  final TokenService _tokenService;
  bool _isConnecting = false;

  SocketController(this.ref, this._tokenService) : super(null);

  Future<void> connect() async {
    if (_isConnecting) {
      return;
    }

    _isConnecting = true;

    try {
      await _forceDisconnect();

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
              // TODO: Implement room handling logic here
              // Example: ref.read(roomProvider.notifier).setRooms(
              //   (data['rooms'] as List).map((e) => Room.fromJson(e)).toList(),
              // );
            }
          }
        });

        socket.on('newMessage', (data) {
          if (data != null) {
            final message = ChatMessage.fromJson(data);
            ref.read(chatProvider.notifier).addMessage(
                  ChatMessageUI(message: message),
                );
          }
        });

        socket.on('messageAck', (data) {
          if (data != null) {
            final response = MessageAckResponse.fromJson(data);
            ref.read(chatProvider.notifier).handleMessageAck(response);
          }
        });

        socket.on('messageError', (data) {
          if (data != null) {
            final error = MessageErrorResponse.fromJson(data);
            ref.read(chatProvider.notifier).handleMessageError(error);
          }
        });

        socket.on('notification', (data) {
          if (data != null) {
            ref.read(notificationProvider.notifier).addNotification(
                  NotificationModel.fromJson(data),
                );
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

  Future<void> _forceDisconnect() async {
    if (state != null) {
      state?.clearListeners();
      state?.dispose();
      state?.disconnect();
      state?.destroy();
      state = null;
      ref.read(chatProvider.notifier).clearMessages();
    }
    _isConnecting = false;
  }

  void disconnect() {
    _forceDisconnect();
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
}

final socketControllerProvider =
    StateNotifierProvider<SocketController, IO.Socket?>((ref) {
  return SocketController(ref, ref.watch(tokenServiceProvider));
});

final socketConnectionProvider = Provider<bool>((ref) {
  final socket = ref.watch(socketControllerProvider);
  return socket?.connected ?? false;
});
