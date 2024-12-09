import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.model.freezed.dart';
part 'notification.model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,
    required String type,
    required String message,
    MangaInfo? manga,
    ChapterInfo? chapter,
    required bool isRead,
    required DateTime createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class MangaInfo with _$MangaInfo {
  const factory MangaInfo({
    required String id,
    required String title,
    required String coverImg,
  }) = _MangaInfo;

  factory MangaInfo.fromJson(Map<String, dynamic> json) =>
      _$MangaInfoFromJson(json);
}

@freezed
class ChapterInfo with _$ChapterInfo {
  const factory ChapterInfo({
    required String id,
    required int number,
  }) = _ChapterInfo;

  factory ChapterInfo.fromJson(Map<String, dynamic> json) =>
      _$ChapterInfoFromJson(json);
}

enum NotificationType {
  @JsonValue('NEW_CHAPTER')
  newChapter,
}
