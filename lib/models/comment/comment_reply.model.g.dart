// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_reply.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentReplyImpl _$$CommentReplyImplFromJson(Map<String, dynamic> json) =>
    _$CommentReplyImpl(
      id: json['_id'] as String,
      content: json['content'] as String,
      user: UploaderInfo.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => ReplyInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      manga: json['manga'] as String?,
      parentComment: json['parentComment'] as String?,
      replyToUser: json['replyToUser'] == null
          ? null
          : UploaderInfo.fromJson(json['replyToUser'] as Map<String, dynamic>),
      mentions: (json['mentions'] as List<dynamic>?)
              ?.map((e) => MentionInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentReplyImplToJson(_$CommentReplyImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
      'replies': instance.replies,
      'manga': instance.manga,
      'parentComment': instance.parentComment,
      'replyToUser': instance.replyToUser,
      'mentions': instance.mentions,
    };

_$MentionInfoImpl _$$MentionInfoImplFromJson(Map<String, dynamic> json) =>
    _$MentionInfoImpl(
      id: json['_id'] as String,
      userId: UploaderInfo.fromJson(json['userId'] as Map<String, dynamic>),
      username: json['username'] as String,
      startIndex: (json['startIndex'] as num).toInt(),
      endIndex: (json['endIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$MentionInfoImplToJson(_$MentionInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
    };
