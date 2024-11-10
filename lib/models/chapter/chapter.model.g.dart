// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['_id'] as String?,
      number: (json['number'] as num).toInt(),
      pagesUrl:
          (json['pagesUrl'] as List<dynamic>).map((e) => e as String).toList(),
      chapterTitle: json['chapterTitle'] as String,
      chapterName: json['chapterName'] as String?,
      views: (json['views'] as num?)?.toInt() ?? 0,
      manga: json['manga'] == null
          ? null
          : Manga.fromJson(json['manga'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'number': instance.number,
      'pagesUrl': instance.pagesUrl,
      'chapterTitle': instance.chapterTitle,
      'chapterName': instance.chapterName,
      'views': instance.views,
      'manga': instance.manga,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
