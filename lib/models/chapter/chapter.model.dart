import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';

part 'chapter.model.freezed.dart';
part 'chapter.model.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    @JsonKey(name: '_id') String? id,
    required int number,
    required List<String> pagesUrl,
    required String chapterTitle,
    String? chapterName,
    @Default(0) int views,
    Manga? manga,
    String? createdAt,
    String? updatedAt,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}
