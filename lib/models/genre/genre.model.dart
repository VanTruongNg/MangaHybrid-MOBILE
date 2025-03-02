import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';

part 'genre.model.freezed.dart';
part 'genre.model.g.dart';

@freezed
class Genre with _$Genre {
  const factory Genre({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
