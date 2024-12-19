// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_manga.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfflineMangaImpl _$$OfflineMangaImplFromJson(Map<String, dynamic> json) =>
    _$OfflineMangaImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] as String,
      status: json['status'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      downloadedAt: json['downloadedAt'] as String,
      coverPath: json['coverPath'] as String?,
      bannerPath: json['bannerPath'] as String?,
    );

Map<String, dynamic> _$$OfflineMangaImplToJson(_$OfflineMangaImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'status': instance.status,
      'genres': instance.genres,
      'downloadedAt': instance.downloadedAt,
      'coverPath': instance.coverPath,
      'bannerPath': instance.bannerPath,
    };
