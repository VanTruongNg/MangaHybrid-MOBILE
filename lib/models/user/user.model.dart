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
    @Default(false) bool isVerified,
    String? avatarUrl,
    @Default([]) List<UserBasicModel> followers,
    @Default([]) List<UserBasicModel> following,
    @Default([]) List<MangaBasicModel> uploadedManga,
    @Default([]) List<MangaBasicModel> favoritesManga,
    @Default([]) List<MangaBasicModel> dislikedManga,
    @Default([]) List<MangaBasicModel> followingManga,
    @Default([]) List<ReadingHistoryModel> readingHistory,
    @Default([]) List<CommentModel> comments,
    @Default([]) List<RatingModel> ratings,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserBasicModel with _$UserBasicModel {
  factory UserBasicModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String email,
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
    required MangaBasicModel manga,
    required ChapterBasicModel chapter,
    required DateTime updatedAt,
  }) = _ReadingHistoryModel;

  factory ReadingHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$ReadingHistoryModelFromJson(json);
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
    @Default([]) List<String> replies,
    @Default([]) List<MentionModel> mentions,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
    required DateTime createdAt,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
    required DateTime updatedAt,
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
    required UserBasicModel user,
    required MangaBasicModel manga,
    required double rating,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
