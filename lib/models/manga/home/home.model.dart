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
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@freezed
class MangaItem with _$MangaItem {
  const factory MangaItem({
    @JsonKey(name: '_id') required String id,
    required String title,
    String? coverImg,
    required String author,
    @Default(0) double rating,
    @Default(0) int view,
    int? viewToday,
    int? viewThisWeek,
    DateTime? latestUpdate,
  }) = _MangaItem;

  factory MangaItem.fromJson(Map<String, dynamic> json) =>
      _$MangaItemFromJson(json);
}