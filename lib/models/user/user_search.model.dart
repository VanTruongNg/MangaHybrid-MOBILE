import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search.model.freezed.dart';
part 'user_search.model.g.dart';

@freezed
class UserSearchResult with _$UserSearchResult {
  const factory UserSearchResult({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? avatarUrl,
    required double score,
  }) = _UserSearchResult;

  factory UserSearchResult.fromJson(Map<String, dynamic> json) =>
      _$UserSearchResultFromJson(json);
} 