// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: json['id'] as String,
      room: ChatRoom.fromJson(json['roomId'] as Map<String, dynamic>),
      sender: ChatUser.fromJson(json['sender'] as Map<String, dynamic>),
      content: json['content'] as String,
      readBy: (json['readBy'] as List<dynamic>)
          .map((e) => ChatUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.room,
      'sender': instance.sender,
      'content': instance.content,
      'readBy': instance.readBy,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$PrivateChatMessageImpl _$$PrivateChatMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivateChatMessageImpl(
      id: json['_id'] as String,
      roomId: json['roomId'] as String,
      sender: ChatUser.fromJson(json['sender'] as Map<String, dynamic>),
      content: json['content'] as String,
      readBy:
          (json['readBy'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$$PrivateChatMessageImplToJson(
        _$PrivateChatMessageImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'roomId': instance.roomId,
      'sender': instance.sender,
      'content': instance.content,
      'readBy': instance.readBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.version,
    };

_$ChatUserImpl _$$ChatUserImplFromJson(Map<String, dynamic> json) =>
    _$ChatUserImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$ChatUserImplToJson(_$ChatUserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };

_$ChatRoomImpl _$$ChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomImpl(
      id: json['_id'] as String,
      type: json['type'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'participants': instance.participants,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.version,
    };
