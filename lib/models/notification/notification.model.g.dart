// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      message: json['message'] as String,
      manga: json['manga'] == null
          ? null
          : MangaInfo.fromJson(json['manga'] as Map<String, dynamic>),
      chapter: json['chapter'] == null
          ? null
          : ChapterInfo.fromJson(json['chapter'] as Map<String, dynamic>),
      isRead: json['isRead'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'message': instance.message,
      'manga': instance.manga,
      'chapter': instance.chapter,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$MangaInfoImpl _$$MangaInfoImplFromJson(Map<String, dynamic> json) =>
    _$MangaInfoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      coverImg: json['coverImg'] as String,
    );

Map<String, dynamic> _$$MangaInfoImplToJson(_$MangaInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImg': instance.coverImg,
    };

_$ChapterInfoImpl _$$ChapterInfoImplFromJson(Map<String, dynamic> json) =>
    _$ChapterInfoImpl(
      id: json['id'] as String,
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$ChapterInfoImplToJson(_$ChapterInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
    };
