import 'package:freezed_annotation/freezed_annotation.dart';

part 'uploader.model.freezed.dart';
part 'uploader.model.g.dart';

@freezed
class Uploader with _$Uploader {
  const factory Uploader({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _Uploader;

  factory Uploader.fromJson(Map<String, dynamic> json) => _$UploaderFromJson(json);
}