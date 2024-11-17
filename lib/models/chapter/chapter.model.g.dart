// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['_id'] as String,
      number: (json['number'] as num).toInt(),
      chapterTitle: json['chapterTitle'] as String?,
      chapterName: json['chapterName'] as String,
      chapterType: json['chapterType'] as String,
      views: (json['views'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'number': instance.number,
      'chapterTitle': instance.chapterTitle,
      'chapterName': instance.chapterName,
      'chapterType': instance.chapterType,
      'views': instance.views,
      'createdAt': instance.createdAt,
    };
