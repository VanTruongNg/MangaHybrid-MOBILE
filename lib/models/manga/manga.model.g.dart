// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaImpl _$$MangaImplFromJson(Map<String, dynamic> json) => _$MangaImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      view: (json['view'] as num?)?.toInt() ?? 0,
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      genre: (json['genre'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      uploader: Uploader.fromJson(json['uploader'] as Map<String, dynamic>),
      coverImg: json['coverImg'] as String?,
      bannerImg: json['bannerImg'] as String?,
      status: json['status'] as String? ?? 'In Progress',
      ratingCount: (json['ratingCount'] as num?)?.toInt() ?? 0,
      followers: (json['followers'] as num?)?.toInt() ?? 0,
      like: (json['like'] as num?)?.toInt() ?? 0,
      dislike: (json['dislike'] as num?)?.toInt() ?? 0,
      approvalStatus: json['approvalStatus'] as String? ?? 'PENDING',
    );

Map<String, dynamic> _$$MangaImplToJson(_$MangaImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'rating': instance.rating,
      'view': instance.view,
      'chapters': instance.chapters,
      'genre': instance.genre,
      'uploader': instance.uploader,
      'coverImg': instance.coverImg,
      'bannerImg': instance.bannerImg,
      'status': instance.status,
      'ratingCount': instance.ratingCount,
      'followers': instance.followers,
      'like': instance.like,
      'dislike': instance.dislike,
      'approvalStatus': instance.approvalStatus,
    };
