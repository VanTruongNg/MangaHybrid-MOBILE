import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_profile.model.freezed.dart';
part 'public_profile.model.g.dart';

@freezed
class PublicProfile with _$PublicProfile {
  const factory PublicProfile({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? avatarUrl,
    @Default([]) List<UserBasic> followers,
    @Default([]) List<UserBasic> following,
    @Default([]) List<MangaBasic> uploadedManga,
    String? createdAt,
  }) = _PublicProfile;

  factory PublicProfile.fromJson(Map<String, dynamic> json) =>
      _$PublicProfileFromJson(json);
}

@freezed
class UserBasic with _$UserBasic {
  const factory UserBasic({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? avatarUrl,
  }) = _UserBasic;

  factory UserBasic.fromJson(Map<String, dynamic> json) =>
      _$UserBasicFromJson(json);
}

@freezed
class MangaBasic with _$MangaBasic {
  const factory MangaBasic({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String author,
    String? coverImg,
  }) = _MangaBasic;

  factory MangaBasic.fromJson(Map<String, dynamic> json) =>
      _$MangaBasicFromJson(json);
}
