// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaDetailImpl _$$MangaDetailImplFromJson(Map<String, dynamic> json) =>
    _$MangaDetailImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      author: json['author'] as String?,
      coverImg: json['coverImg'] as String?,
      bannerImg: json['bannerImg'] as String?,
      status: json['status'] as String,
      approvalStatus: json['approvalStatus'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      like: (json['like'] as num?)?.toInt() ?? 0,
      disLike: (json['disLike'] as num?)?.toInt() ?? 0,
      view: (json['view'] as num?)?.toInt() ?? 0,
      followers: (json['followers'] as num?)?.toInt() ?? 0,
      totalRating: (json['totalRating'] as num?)?.toDouble() ?? 0,
      ratingCount: (json['ratingCount'] as num?)?.toInt() ?? 0,
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      uploader: UploaderInfo.fromJson(json['uploader'] as Map<String, dynamic>),
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => ChapterInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      genre: (json['genre'] as List<dynamic>?)
              ?.map((e) => GenreInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MangaDetailImplToJson(_$MangaDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'coverImg': instance.coverImg,
      'bannerImg': instance.bannerImg,
      'status': instance.status,
      'approvalStatus': instance.approvalStatus,
      'rating': instance.rating,
      'like': instance.like,
      'disLike': instance.disLike,
      'view': instance.view,
      'followers': instance.followers,
      'totalRating': instance.totalRating,
      'ratingCount': instance.ratingCount,
      'averageRating': instance.averageRating,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'uploader': instance.uploader,
      'chapters': instance.chapters,
      'genre': instance.genre,
      'comments': instance.comments,
    };

_$UploaderInfoImpl _$$UploaderInfoImplFromJson(Map<String, dynamic> json) =>
    _$UploaderInfoImpl(
      id: json['_id'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$UploaderInfoImplToJson(_$UploaderInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
    };

_$ChapterInfoImpl _$$ChapterInfoImplFromJson(Map<String, dynamic> json) =>
    _$ChapterInfoImpl(
      id: json['_id'] as String,
      chapterTitle: json['chapterTitle'] as String?,
      chapterName: json['chapterName'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      views: (json['views'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ChapterInfoImplToJson(_$ChapterInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'chapterTitle': instance.chapterTitle,
      'chapterName': instance.chapterName,
      'createdAt': instance.createdAt.toIso8601String(),
      'views': instance.views,
    };

_$GenreInfoImpl _$$GenreInfoImplFromJson(Map<String, dynamic> json) =>
    _$GenreInfoImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreInfoImplToJson(_$GenreInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

_$CommentInfoImpl _$$CommentInfoImplFromJson(Map<String, dynamic> json) =>
    _$CommentInfoImpl(
      id: json['_id'] as String,
      content: json['content'] as String,
      user: UploaderInfo.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => ReplyInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentInfoImplToJson(_$CommentInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
      'replies': instance.replies,
    };

_$ReplyInfoImpl _$$ReplyInfoImplFromJson(Map<String, dynamic> json) =>
    _$ReplyInfoImpl(
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ReplyInfoImplToJson(_$ReplyInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
    };
