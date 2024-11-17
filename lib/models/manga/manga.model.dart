import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webtoon_mobile/models/chapter/ChapterDetail/chapter_detail.model.dart';
import 'package:webtoon_mobile/models/chapter/chapter.model.dart';
import 'package:webtoon_mobile/models/genre/genre.model.dart';
import 'package:webtoon_mobile/models/user/uploader/uploader.model.dart';
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
    @Default(0) int view,
    @Default([]) List<Chapter> chapters,
    @Default([]) List<Genre> genre,
    required Uploader uploader,
    String? coverImg,
    String? bannerImg,
    @Default('In Progress') String status,
    @Default(0) int ratingCount,
    @Default(0) int followers,
    @Default(0) int like,
    @Default(0) int dislike,
    @Default('PENDING') String approvalStatus,
  }) = _Manga;

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
}
