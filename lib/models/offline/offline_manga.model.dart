import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_manga.model.freezed.dart';
part 'offline_manga.model.g.dart';

@freezed
class OfflineManga with _$OfflineManga {
  const factory OfflineManga({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String description,
    required String author,
    required String status,
    required List<String> genres,
    required String downloadedAt,
    String? coverPath,
    String? bannerPath,
  }) = _OfflineManga;

  factory OfflineManga.fromJson(Map<String, dynamic> json) =>
      _$OfflineMangaFromJson(json);
}
