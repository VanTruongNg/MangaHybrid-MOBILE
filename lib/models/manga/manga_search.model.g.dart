// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_search.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaSearchResultImpl _$$MangaSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaSearchResultImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverImg: json['coverImg'] as String,
      uploader: MangaSearchUploader.fromJson(
          json['uploader'] as Map<String, dynamic>),
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$$MangaSearchResultImplToJson(
        _$MangaSearchResultImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'coverImg': instance.coverImg,
      'uploader': instance.uploader,
      'score': instance.score,
    };

_$MangaSearchUploaderImpl _$$MangaSearchUploaderImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaSearchUploaderImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$MangaSearchUploaderImplToJson(
        _$MangaSearchUploaderImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
