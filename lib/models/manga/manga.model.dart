import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.model.freezed.dart';
part 'manga.model.g.dart';

@freezed
class MangaDetail with _$MangaDetail {
  const factory MangaDetail({
    @JsonKey(name: '_id') required String id,
    required String title,
    String? description,
    String? author,
    String? coverImg,
    String? bannerImg,
    required String status,
    required String approvalStatus,
    @Default(0) double rating,
    @Default(0) int like,
    @Default(0) int disLike,
    @Default(0) int view,
    @Default(0) int followers,
    @Default(0) double totalRating,
    @Default(0) int ratingCount,
    @Default(0) double averageRating,
    required DateTime createdAt,
    required DateTime updatedAt,
    required UploaderInfo uploader,
    @Default([]) List<ChapterInfo> chapters,
    @Default([]) List<GenreInfo> genre,
    @Default([]) List<CommentInfo> comments,
  }) = _MangaDetail;

  factory MangaDetail.fromJson(Map<String, dynamic> json) =>
      _$MangaDetailFromJson(json);
}

@freezed
class UploaderInfo with _$UploaderInfo {
  const factory UploaderInfo({
    @JsonKey(name: '_id') required String id,
    String? name,
    String? email,
    String? avatarUrl,
  }) = _UploaderInfo;

  factory UploaderInfo.fromJson(Map<String, dynamic> json) =>
      _$UploaderInfoFromJson(json);
}

@freezed
class ChapterInfo with _$ChapterInfo {
  const factory ChapterInfo({
    @JsonKey(name: '_id') required String id,
    String? chapterTitle,
    String? chapterName,
    required DateTime createdAt,
    @Default(0) int views,
  }) = _ChapterInfo;

  factory ChapterInfo.fromJson(Map<String, dynamic> json) =>
      _$ChapterInfoFromJson(json);
}

@freezed
class GenreInfo with _$GenreInfo {
  const factory GenreInfo({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _GenreInfo;

  factory GenreInfo.fromJson(Map<String, dynamic> json) =>
      _$GenreInfoFromJson(json);
}

@freezed
class CommentInfo with _$CommentInfo {
  const factory CommentInfo({
    @JsonKey(name: '_id') required String id,
    required String content,
    required UploaderInfo user,
    required DateTime createdAt,
    @Default([]) List<ReplyInfo> replies,
  }) = _CommentInfo;

  factory CommentInfo.fromJson(Map<String, dynamic> json) =>
      _$CommentInfoFromJson(json);
}

@freezed
class ReplyInfo with _$ReplyInfo {
  const factory ReplyInfo({
    @JsonKey(name: '_id') required String id,
  }) = _ReplyInfo;

  factory ReplyInfo.fromJson(Map<String, dynamic> json) =>
      _$ReplyInfoFromJson(json);
}
