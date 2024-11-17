// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterNavigationImpl _$$ChapterNavigationImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterNavigationImpl(
      prevChapter: json['prevChapter'] == null
          ? null
          : ChapterInfo.fromJson(json['prevChapter'] as Map<String, dynamic>),
      nextChapter: json['nextChapter'] == null
          ? null
          : ChapterInfo.fromJson(json['nextChapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChapterNavigationImplToJson(
        _$ChapterNavigationImpl instance) =>
    <String, dynamic>{
      'prevChapter': instance.prevChapter,
      'nextChapter': instance.nextChapter,
    };

_$ChapterInfoImpl _$$ChapterInfoImplFromJson(Map<String, dynamic> json) =>
    _$ChapterInfoImpl(
      id: json['_id'] as String,
      number: (json['number'] as num).toInt(),
      chapterName: json['chapterName'] as String,
      chapterTitle: json['chapterTitle'] as String?,
      chapterType: json['chapterType'] as String?,
      views: (json['views'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ChapterInfoImplToJson(_$ChapterInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'number': instance.number,
      'chapterName': instance.chapterName,
      'chapterTitle': instance.chapterTitle,
      'chapterType': instance.chapterType,
      'views': instance.views,
    };

_$MangaInfoImpl _$$MangaInfoImplFromJson(Map<String, dynamic> json) =>
    _$MangaInfoImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$MangaInfoImplToJson(_$MangaInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };
