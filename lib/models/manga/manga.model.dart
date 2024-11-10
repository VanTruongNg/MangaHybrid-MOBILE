import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums.dart';

part 'manga.model.freezed.dart';
part 'manga.model.g.dart';

@freezed
class Manga with _$Manga {
  const factory Manga({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String description,
    required String author,
    @Default(0) double rating,
    @Default(0) int like,
    @Default(0) int disLike,
    @JsonKey(name: 'view') @Default(0) int views,
    @Default([]) List<String> followers,
    @Default([]) List<String> chapters,
    @Default([]) List<String> genre,
    required String uploader,
    required String createdAt,
    required String updatedAt,
    @JsonKey(name: '__v') int? version,
    String? coverImg,
    @Default(StatusEnum.inProgress) StatusEnum status,
    @Default(ApprovalStatus.pending) ApprovalStatus approvalStatus,
  }) = _Manga;

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
}