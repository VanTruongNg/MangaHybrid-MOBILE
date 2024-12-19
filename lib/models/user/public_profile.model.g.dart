// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_profile.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicProfileImpl _$$PublicProfileImplFromJson(Map<String, dynamic> json) =>
    _$PublicProfileImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      followers: (json['followers'] as List<dynamic>?)
              ?.map((e) => UserBasic.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      following: (json['following'] as List<dynamic>?)
              ?.map((e) => UserBasic.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      uploadedManga: (json['uploadedManga'] as List<dynamic>?)
              ?.map((e) => MangaBasic.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$PublicProfileImplToJson(_$PublicProfileImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'followers': instance.followers,
      'following': instance.following,
      'uploadedManga': instance.uploadedManga,
      'createdAt': instance.createdAt,
    };

_$UserBasicImpl _$$UserBasicImplFromJson(Map<String, dynamic> json) =>
    _$UserBasicImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$UserBasicImplToJson(_$UserBasicImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };

_$MangaBasicImpl _$$MangaBasicImplFromJson(Map<String, dynamic> json) =>
    _$MangaBasicImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverImg: json['coverImg'] as String?,
    );

Map<String, dynamic> _$$MangaBasicImplToJson(_$MangaBasicImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'coverImg': instance.coverImg,
    };
