// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      id: json['_id'] as String?,
      name: json['name'] as String,
      manga: (json['manga'] as List<dynamic>?)
              ?.map((e) => Manga.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'manga': instance.manga,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
