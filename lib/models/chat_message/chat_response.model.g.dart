// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageAckResponseImpl _$$MessageAckResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageAckResponseImpl(
      tempId: json['tempId'] as String,
      message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageAckResponseImplToJson(
        _$MessageAckResponseImpl instance) =>
    <String, dynamic>{
      'tempId': instance.tempId,
      'message': instance.message,
    };

_$MessageErrorResponseImpl _$$MessageErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageErrorResponseImpl(
      tempId: json['tempId'] as String,
      error: json['error'] as String,
    );

Map<String, dynamic> _$$MessageErrorResponseImplToJson(
        _$MessageErrorResponseImpl instance) =>
    <String, dynamic>{
      'tempId': instance.tempId,
      'error': instance.error,
    };
