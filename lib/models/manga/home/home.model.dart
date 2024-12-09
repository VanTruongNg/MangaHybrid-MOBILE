import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.model.freezed.dart';
part 'home.model.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    required List<MangaItem> dailyTop,
    required List<MangaItem> weeklyTop,
    required List<MangaItem> recentUpdated,
    required List<MangaItem> randomManga,
    required List<MangaItem> topAllTime,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@freezed
class MangaItem with _$MangaItem {
  const factory MangaItem({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String description,
    String? coverImg,
    String? bannerImg,
    required String author,
    @Default(0) double rating,
    @Default(0) int view,
    int? dailyView,
    int? weeklyView,
    DateTime? latestUpdate,
  }) = _MangaItem;

  factory MangaItem.fromJson(Map<String, dynamic> json) =>
      _$MangaItemFromJson(json);
}