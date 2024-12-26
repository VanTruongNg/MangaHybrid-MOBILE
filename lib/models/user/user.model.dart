import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

DateTime dateTimeFromJson(dynamic date) {
  if (date is String) {
    return DateTime.parse(date);
  }
  if (date is DateTime) {
    return date;
  }
  throw FormatException('Invalid date format');
}

String dateTimeToJson(DateTime date) => date.toIso8601String();

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String email,
    String? avatarUrl,
    @JsonKey(defaultValue: 'user') required String role,
    required bool isVerified,
    @JsonKey(defaultValue: []) @Default([]) List<UserBasicModel> followers,
    @JsonKey(defaultValue: []) @Default([]) List<UserBasicModel> following,
    @JsonKey(defaultValue: []) @Default([]) List<MangaBasicModel> uploadedManga,
    @JsonKey(defaultValue: [])
    @Default([])
    List<MangaBasicModel> favoritesManga,
    @JsonKey(defaultValue: []) @Default([]) List<MangaBasicModel> dislikedManga,
    @JsonKey(defaultValue: [])
    @Default([])
    List<MangaBasicModel> followingManga,
    @JsonKey(defaultValue: [])
    @Default([])
    List<ReadingHistoryModel> readingHistory,
    @JsonKey(defaultValue: []) @Default([]) List<String> comments,
    @JsonKey(defaultValue: []) @Default([]) List<RatingModel> ratings,
    required String createdAt,
    required String updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserBasicModel with _$UserBasicModel {
  factory UserBasicModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? email,
    String? avatarUrl,
  }) = _UserBasicModel;

  factory UserBasicModel.fromJson(Map<String, dynamic> json) =>
      _$UserBasicModelFromJson(json);
}

@freezed
class MangaBasicModel with _$MangaBasicModel {
  factory MangaBasicModel({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String author,
    String? coverImg,
  }) = _MangaBasicModel;

  factory MangaBasicModel.fromJson(Map<String, dynamic> json) =>
      _$MangaBasicModelFromJson(json);
}

@freezed
class ReadingHistoryModel with _$ReadingHistoryModel {
  factory ReadingHistoryModel({
    @JsonKey(name: '_id') required String id,
    required MangaBasicModel manga,
    @JsonKey(defaultValue: []) @Default([]) List<ChapterReadModel> chapters,
    required String updatedAt,
  }) = _ReadingHistoryModel;

  factory ReadingHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$ReadingHistoryModelFromJson(json);
}

@freezed
class ChapterReadModel with _$ChapterReadModel {
  factory ChapterReadModel({
    @JsonKey(name: '_id') required String id,
    required ChapterInfoModel chapter,
    required String readAt,
  }) = _ChapterReadModel;

  factory ChapterReadModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterReadModelFromJson(json);
}

@freezed
class ChapterInfoModel with _$ChapterInfoModel {
  factory ChapterInfoModel({
    @JsonKey(name: '_id') required String id,
    required String chapterName,
    required String createdAt,
  }) = _ChapterInfoModel;

  factory ChapterInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterInfoModelFromJson(json);
}

@freezed
class ChapterBasicModel with _$ChapterBasicModel {
  factory ChapterBasicModel({
    @JsonKey(name: '_id') required String id,
    required int number,
    String? chapterTitle,
    required String chapterType,
  }) = _ChapterBasicModel;

  factory ChapterBasicModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterBasicModelFromJson(json);
}

@freezed
class CommentModel with _$CommentModel {
  factory CommentModel({
    @JsonKey(name: '_id') required String id,
    required String content,
    required String user,
    String? manga,
    String? parentComment,
    String? replyToUser,
    @JsonKey(defaultValue: []) @Default([]) List<String> replies,
    @JsonKey(defaultValue: []) @Default([]) List<MentionModel> mentions,
    required String createdAt,
    required String updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}

@freezed
class MentionModel with _$MentionModel {
  factory MentionModel({
    @JsonKey(name: '_id') String? id,
    required String userId,
    required String username,
    required int startIndex,
    required int endIndex,
  }) = _MentionModel;

  factory MentionModel.fromJson(Map<String, dynamic> json) =>
      _$MentionModelFromJson(json);
}

@freezed
class RatingModel with _$RatingModel {
  factory RatingModel({
    @JsonKey(name: '_id') required String id,
    required String user,
    required MangaBasicModel manga,
    required int score,
    required String createdAt,
    required String updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
