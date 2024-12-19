import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.model.freezed.dart';
part 'chat_message.model.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    @JsonKey(name: 'roomId') required ChatRoom room,
    required ChatUser sender,
    required String content,
    required List<ChatUser> readBy,
    required DateTime createdAt,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

@freezed
class PrivateChatMessage with _$PrivateChatMessage {
  const factory PrivateChatMessage({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'roomId') required String roomId,
    required ChatUser sender,
    required String content,
    required List<String> readBy,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int version,
  }) = _PrivateChatMessage;

  factory PrivateChatMessage.fromJson(Map<String, dynamic> json) =>
      _$PrivateChatMessageFromJson(json);
}

@freezed
class ChatMessageUI with _$ChatMessageUI {
  const factory ChatMessageUI({
    required ChatMessage message,
    String? tempId,
    @Default(false) bool isSending,
    String? error,
  }) = _ChatMessageUI;
}

@freezed
class PrivateChatMessageUI with _$PrivateChatMessageUI {
  const factory PrivateChatMessageUI({
    required PrivateChatMessage message,
    String? tempId,
    @Default(false) bool isSending,
    String? error,
  }) = _PrivateChatMessageUI;
}

@freezed
class ChatUser with _$ChatUser {
  const factory ChatUser({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? avatarUrl,
  }) = _ChatUser;

  factory ChatUser.fromJson(Map<String, dynamic> json) =>
      _$ChatUserFromJson(json);
}

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    @JsonKey(name: '_id') required String id,
    required String type,
    required List<String> participants,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int version,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}
