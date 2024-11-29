import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';

part 'comment_reply.model.freezed.dart';
part 'comment_reply.model.g.dart';

@freezed
class CommentReply with _$CommentReply {
  const factory CommentReply({
    @JsonKey(name: '_id') required String id,
    required String content,
    required UploaderInfo user,
    required DateTime createdAt,
    @Default([]) List<ReplyInfo> replies,
    String? manga,
    String? parentComment,
    UploaderInfo? replyToUser,
    @Default([]) List<MentionInfo> mentions,
  }) = _CommentReply;

  factory CommentReply.fromJson(Map<String, dynamic> json) =>
      _$CommentReplyFromJson(json);
}

@freezed
class MentionInfo with _$MentionInfo {
  const factory MentionInfo({
    @JsonKey(name: '_id') required String id,
    required UploaderInfo userId,
    required String username,
    required int startIndex,
    required int endIndex,
  }) = _MentionInfo;

  factory MentionInfo.fromJson(Map<String, dynamic> json) =>
      _$MentionInfoFromJson(json);
}