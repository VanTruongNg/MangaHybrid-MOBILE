import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_detail.model.freezed.dart';
part 'chapter_detail.model.g.dart';

@freezed
class ChapterNavigation with _$ChapterNavigation {
  const factory ChapterNavigation({
    ChapterInfo? prevChapter,
    ChapterInfo? nextChapter,
  }) = _ChapterNavigation;

  factory ChapterNavigation.fromJson(Map<String, dynamic> json) =>
      _$ChapterNavigationFromJson(json);
}

@freezed
class ChapterInfo with _$ChapterInfo {
  const factory ChapterInfo({
    @JsonKey(name: '_id') required String id,
    required int number,
    required String chapterName,
    String? chapterTitle,
    String? chapterType,
    @Default(0) int views,
  }) = _ChapterInfo;

  factory ChapterInfo.fromJson(Map<String, dynamic> json) =>
      _$ChapterInfoFromJson(json);
}

@freezed
class MangaInfo with _$MangaInfo {
  const factory MangaInfo({
    @JsonKey(name: '_id') required String id,
    required String title,
  }) = _MangaInfo;

  factory MangaInfo.fromJson(Map<String, dynamic> json) =>
      _$MangaInfoFromJson(json);
}

@freezed
class ChapterDetail with _$ChapterDetail {
  const factory ChapterDetail({
    required ChapterInfo chapterInfo,
    required MangaInfo mangaInfo,
    required List<String> pagesUrl,
    ChapterNavigation? navigation,
  }) = _ChapterDetail;

  factory ChapterDetail.fromJson(Map<String, dynamic> json) {
    return _ChapterDetail(
      chapterInfo: ChapterInfo.fromJson(json['chapterInfo']),
      mangaInfo: MangaInfo.fromJson(json['mangaInfo']),
      pagesUrl: List<String>.from(json['pagesUrl']),
      navigation: json['navigation'] == null
          ? null
          : ChapterNavigation.fromJson(json['navigation']),
    );
  }
}
