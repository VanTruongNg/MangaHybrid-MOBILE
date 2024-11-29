// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      isVerified: json['isVerified'] as bool? ?? false,
      avatarUrl: json['avatarUrl'] as String?,
      followers: (json['followers'] as List<dynamic>?)
              ?.map((e) => UserBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      following: (json['following'] as List<dynamic>?)
              ?.map((e) => UserBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      uploadedManga: (json['uploadedManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      favoritesManga: (json['favoritesManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dislikedManga: (json['dislikedManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      followingManga: (json['followingManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      readingHistory: (json['readingHistory'] as List<dynamic>?)
              ?.map((e) =>
                  ReadingHistoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      ratings: (json['ratings'] as List<dynamic>?)
              ?.map((e) => RatingModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'isVerified': instance.isVerified,
      'avatarUrl': instance.avatarUrl,
      'followers': instance.followers,
      'following': instance.following,
      'uploadedManga': instance.uploadedManga,
      'favoritesManga': instance.favoritesManga,
      'dislikedManga': instance.dislikedManga,
      'followingManga': instance.followingManga,
      'readingHistory': instance.readingHistory,
      'comments': instance.comments,
      'ratings': instance.ratings,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$UserBasicModelImpl _$$UserBasicModelImplFromJson(Map<String, dynamic> json) =>
    _$UserBasicModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$UserBasicModelImplToJson(
        _$UserBasicModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
    };

_$MangaBasicModelImpl _$$MangaBasicModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaBasicModelImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverImg: json['coverImg'] as String?,
    );

Map<String, dynamic> _$$MangaBasicModelImplToJson(
        _$MangaBasicModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'coverImg': instance.coverImg,
    };

_$ReadingHistoryModelImpl _$$ReadingHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingHistoryModelImpl(
      manga: MangaBasicModel.fromJson(json['manga'] as Map<String, dynamic>),
      chapter:
          ChapterBasicModel.fromJson(json['chapter'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ReadingHistoryModelImplToJson(
        _$ReadingHistoryModelImpl instance) =>
    <String, dynamic>{
      'manga': instance.manga,
      'chapter': instance.chapter,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$ChapterBasicModelImpl _$$ChapterBasicModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterBasicModelImpl(
      id: json['_id'] as String,
      number: (json['number'] as num).toInt(),
      chapterTitle: json['chapterTitle'] as String?,
      chapterType: json['chapterType'] as String,
    );

Map<String, dynamic> _$$ChapterBasicModelImplToJson(
        _$ChapterBasicModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'number': instance.number,
      'chapterTitle': instance.chapterTitle,
      'chapterType': instance.chapterType,
    };

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: json['_id'] as String,
      content: json['content'] as String,
      user: json['user'] as String,
      manga: json['manga'] as String?,
      parentComment: json['parentComment'] as String?,
      replyToUser: json['replyToUser'] as String?,
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      mentions: (json['mentions'] as List<dynamic>?)
              ?.map((e) => MentionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: dateTimeFromJson(json['createdAt']),
      updatedAt: dateTimeFromJson(json['updatedAt']),
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'user': instance.user,
      'manga': instance.manga,
      'parentComment': instance.parentComment,
      'replyToUser': instance.replyToUser,
      'replies': instance.replies,
      'mentions': instance.mentions,
      'createdAt': dateTimeToJson(instance.createdAt),
      'updatedAt': dateTimeToJson(instance.updatedAt),
      '__v': instance.version,
    };

_$MentionModelImpl _$$MentionModelImplFromJson(Map<String, dynamic> json) =>
    _$MentionModelImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String,
      username: json['username'] as String,
      startIndex: (json['startIndex'] as num).toInt(),
      endIndex: (json['endIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$MentionModelImplToJson(_$MentionModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
    };

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      id: json['_id'] as String,
      user: UserBasicModel.fromJson(json['user'] as Map<String, dynamic>),
      manga: MangaBasicModel.fromJson(json['manga'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'manga': instance.manga,
      'rating': instance.rating,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
