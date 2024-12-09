import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_message.model.dart';

part 'chat_response.model.freezed.dart';
part 'chat_response.model.g.dart';

@freezed
class MessageAckResponse with _$MessageAckResponse {
  const factory MessageAckResponse({
    required String tempId,
    required ChatMessage message,
  }) = _MessageAckResponse;

  factory MessageAckResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageAckResponseFromJson(json);
}

@freezed
class MessageErrorResponse with _$MessageErrorResponse {
  const factory MessageErrorResponse({
    required String tempId,
    required String error,
  }) = _MessageErrorResponse;

  factory MessageErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageErrorResponseFromJson(json);
}
