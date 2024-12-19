// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSearchResultImpl _$$UserSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSearchResultImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserSearchResultImplToJson(
        _$UserSearchResultImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'score': instance.score,
    };
