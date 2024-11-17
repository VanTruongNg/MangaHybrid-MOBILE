// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseImpl _$$HomeResponseImplFromJson(Map<String, dynamic> json) =>
    _$HomeResponseImpl(
      dailyTop: (json['dailyTop'] as List<dynamic>)
          .map((e) => MangaItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      weeklyTop: (json['weeklyTop'] as List<dynamic>)
          .map((e) => MangaItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentUpdated: (json['recentUpdated'] as List<dynamic>)
          .map((e) => MangaItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      randomManga: (json['randomManga'] as List<dynamic>)
          .map((e) => MangaItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeResponseImplToJson(_$HomeResponseImpl instance) =>
    <String, dynamic>{
      'dailyTop': instance.dailyTop,
      'weeklyTop': instance.weeklyTop,
      'recentUpdated': instance.recentUpdated,
      'randomManga': instance.randomManga,
    };

_$MangaItemImpl _$$MangaItemImplFromJson(Map<String, dynamic> json) =>
    _$MangaItemImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      coverImg: json['coverImg'] as String?,
      author: json['author'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      view: (json['view'] as num?)?.toInt() ?? 0,
      viewToday: (json['viewToday'] as num?)?.toInt(),
      viewThisWeek: (json['viewThisWeek'] as num?)?.toInt(),
      latestUpdate: json['latestUpdate'] == null
          ? null
          : DateTime.parse(json['latestUpdate'] as String),
    );

Map<String, dynamic> _$$MangaItemImplToJson(_$MangaItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'coverImg': instance.coverImg,
      'author': instance.author,
      'rating': instance.rating,
      'view': instance.view,
      'viewToday': instance.viewToday,
      'viewThisWeek': instance.viewThisWeek,
      'latestUpdate': instance.latestUpdate?.toIso8601String(),
    };
