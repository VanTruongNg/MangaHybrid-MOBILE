// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.reader,
      isVerified: json['isVerified'] as bool? ?? false,
      avatarUrl: json['avatarUrl'] as String?,
      dislikedManga: (json['dislikedManga'] as List<dynamic>?)
              ?.map((e) => Manga.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      followingManga: (json['followingManga'] as List<dynamic>?)
              ?.map((e) => Manga.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      uploadedManga: (json['uploadedManga'] as List<dynamic>?)
              ?.map((e) => Manga.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      following: (json['following'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      followers: (json['followers'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      readingHistory: (json['readingHistory'] as List<dynamic>?)
              ?.map(
                  (e) => ReadingHistoryItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'role': _$RoleEnumMap[instance.role]!,
      'isVerified': instance.isVerified,
      'avatarUrl': instance.avatarUrl,
      'dislikedManga': instance.dislikedManga,
      'followingManga': instance.followingManga,
      'uploadedManga': instance.uploadedManga,
      'following': instance.following,
      'followers': instance.followers,
      'readingHistory': instance.readingHistory,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };

const _$RoleEnumMap = {
  Role.reader: 'reader',
  Role.admin: 'admin',
  Role.uploader: 'uploader',
};

_$ReadingHistoryItemImpl _$$ReadingHistoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingHistoryItemImpl(
      manga: Manga.fromJson(json['manga'] as Map<String, dynamic>),
      chapter: Chapter.fromJson(json['chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReadingHistoryItemImplToJson(
        _$ReadingHistoryItemImpl instance) =>
    <String, dynamic>{
      'manga': instance.manga,
      'chapter': instance.chapter,
    };
