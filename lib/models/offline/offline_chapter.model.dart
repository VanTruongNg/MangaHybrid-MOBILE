import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_chapter.model.freezed.dart';
part 'offline_chapter.model.g.dart';

@freezed
class OfflineChapter with _$OfflineChapter {
  const factory OfflineChapter({
    @JsonKey(name: '_id') required String id,
    required String mangaId,
    required int number,
    @Default('') String title,
    @Default('normal') String type,
    required int totalPages,
    required List<String> pagePaths,
  }) = _OfflineChapter;

  factory OfflineChapter.fromJson(Map<String, dynamic> json) =>
      _$OfflineChapterFromJson(json);
}
