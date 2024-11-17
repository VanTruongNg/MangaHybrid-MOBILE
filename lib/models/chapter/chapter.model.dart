import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.model.freezed.dart';
part 'chapter.model.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    @JsonKey(name: '_id') required String id,
    required int number,
    String? chapterTitle,
    required String chapterName,
    required String chapterType,
    @Default(0) int views,
    required String createdAt,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}
