// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_chapter.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfflineChapterImpl _$$OfflineChapterImplFromJson(Map<String, dynamic> json) =>
    _$OfflineChapterImpl(
      id: json['_id'] as String,
      mangaId: json['mangaId'] as String,
      number: (json['number'] as num).toInt(),
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? 'normal',
      totalPages: (json['totalPages'] as num).toInt(),
      pagePaths:
          (json['pagePaths'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OfflineChapterImplToJson(
        _$OfflineChapterImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'mangaId': instance.mangaId,
      'number': instance.number,
      'title': instance.title,
      'type': instance.type,
      'totalPages': instance.totalPages,
      'pagePaths': instance.pagePaths,
    };
