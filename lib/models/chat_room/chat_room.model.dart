import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';

part 'chat_room.model.freezed.dart';
part 'chat_room.model.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    @JsonKey(name: '_id') required String id,
    required String type,
    required List<ChatUser> participants,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int version,
    String? lastMessage,
    DateTime? lastMessageAt,
    ChatUser? lastSender,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}
