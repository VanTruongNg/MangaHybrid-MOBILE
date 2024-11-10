import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webtoon_mobile/models/chapter/chapter.model.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';
import 'package:webtoon_mobile/models/user/enums.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: '_id') String? id,
    required String name,
    required String email,
    String? password,
    @Default(Role.reader) Role role,
    @Default(false) bool isVerified,
    String? avatarUrl,
    @Default([]) List<Manga> dislikedManga,
    @Default([]) List<Manga> followingManga,
    @Default([]) List<Manga> uploadedManga,
    @Default([]) List<User> following,
    @Default([]) List<User> followers,
    @Default([]) List<ReadingHistoryItem> readingHistory,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class ReadingHistoryItem with _$ReadingHistoryItem {
  const factory ReadingHistoryItem({
    required Manga manga,
    required Chapter chapter,
  }) = _ReadingHistoryItem;

  factory ReadingHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$ReadingHistoryItemFromJson(json);
}
