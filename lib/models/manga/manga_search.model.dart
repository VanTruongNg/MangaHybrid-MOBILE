import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_search.model.freezed.dart';
part 'manga_search.model.g.dart';

@freezed
class MangaSearchResult with _$MangaSearchResult {
  const factory MangaSearchResult({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String author,
    required String coverImg,
    required MangaSearchUploader uploader,
    required double score,
  }) = _MangaSearchResult;

  factory MangaSearchResult.fromJson(Map<String, dynamic> json) =>
      _$MangaSearchResultFromJson(json);
}

@freezed
class MangaSearchUploader with _$MangaSearchUploader {
  const factory MangaSearchUploader({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? avatarUrl,
  }) = _MangaSearchUploader;

  factory MangaSearchUploader.fromJson(Map<String, dynamic> json) =>
      _$MangaSearchUploaderFromJson(json);
}
