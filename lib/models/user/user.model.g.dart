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
      avatarUrl: json['avatarUrl'] as String?,
      role: json['role'] as String? ?? 'user',
      isVerified: json['isVerified'] as bool,
      followers: (json['followers'] as List<dynamic>?)
              ?.map((e) => UserBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      following: (json['following'] as List<dynamic>?)
              ?.map((e) => UserBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      uploadedManga: (json['uploadedManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      favoritesManga: (json['favoritesManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      dislikedManga: (json['dislikedManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      followingManga: (json['followingManga'] as List<dynamic>?)
              ?.map((e) => MangaBasicModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      readingHistory: (json['readingHistory'] as List<dynamic>?)
              ?.map((e) =>
                  ReadingHistoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ratings: (json['ratings'] as List<dynamic>?)
              ?.map((e) => RatingModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'role': instance.role,
      'isVerified': instance.isVerified,
      'followers': instance.followers,
      'following': instance.following,
      'uploadedManga': instance.uploadedManga,
      'favoritesManga': instance.favoritesManga,
      'dislikedManga': instance.dislikedManga,
      'followingManga': instance.followingManga,
      'readingHistory': instance.readingHistory,
      'comments': instance.comments,
      'ratings': instance.ratings,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$UserBasicModelImpl _$$UserBasicModelImplFromJson(Map<String, dynamic> json) =>
    _$UserBasicModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
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
      id: json['_id'] as String,
      manga: MangaBasicModel.fromJson(json['manga'] as Map<String, dynamic>),
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => ChapterReadModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$ReadingHistoryModelImplToJson(
        _$ReadingHistoryModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'manga': instance.manga,
      'chapters': instance.chapters,
      'updatedAt': instance.updatedAt,
    };

_$ChapterReadModelImpl _$$ChapterReadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterReadModelImpl(
      id: json['_id'] as String,
      chapter:
          ChapterInfoModel.fromJson(json['chapter'] as Map<String, dynamic>),
      readAt: json['readAt'] as String,
    );

Map<String, dynamic> _$$ChapterReadModelImplToJson(
        _$ChapterReadModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'chapter': instance.chapter,
      'readAt': instance.readAt,
    };

_$ChapterInfoModelImpl _$$ChapterInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterInfoModelImpl(
      id: json['_id'] as String,
      chapterName: json['chapterName'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ChapterInfoModelImplToJson(
        _$ChapterInfoModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'chapterName': instance.chapterName,
      'createdAt': instance.createdAt,
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
          [],
      mentions: (json['mentions'] as List<dynamic>?)
              ?.map((e) => MentionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'manga': instance.manga,
      'rating': instance.rating,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
