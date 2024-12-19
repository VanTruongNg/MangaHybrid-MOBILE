// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageAckResponse _$MessageAckResponseFromJson(Map<String, dynamic> json) {
  return _MessageAckResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageAckResponse {
  String get tempId => throw _privateConstructorUsedError;
  ChatMessage get message => throw _privateConstructorUsedError;

  /// Serializes this MessageAckResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageAckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageAckResponseCopyWith<MessageAckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAckResponseCopyWith<$Res> {
  factory $MessageAckResponseCopyWith(
          MessageAckResponse value, $Res Function(MessageAckResponse) then) =
      _$MessageAckResponseCopyWithImpl<$Res, MessageAckResponse>;
  @useResult
  $Res call({String tempId, ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$MessageAckResponseCopyWithImpl<$Res, $Val extends MessageAckResponse>
    implements $MessageAckResponseCopyWith<$Res> {
  _$MessageAckResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageAckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempId = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      tempId: null == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ) as $Val);
  }

  /// Create a copy of MessageAckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageAckResponseImplCopyWith<$Res>
    implements $MessageAckResponseCopyWith<$Res> {
  factory _$$MessageAckResponseImplCopyWith(_$MessageAckResponseImpl value,
          $Res Function(_$MessageAckResponseImpl) then) =
      __$$MessageAckResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tempId, ChatMessage message});

  @override
  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageAckResponseImplCopyWithImpl<$Res>
    extends _$MessageAckResponseCopyWithImpl<$Res, _$MessageAckResponseImpl>
    implements _$$MessageAckResponseImplCopyWith<$Res> {
  __$$MessageAckResponseImplCopyWithImpl(_$MessageAckResponseImpl _value,
      $Res Function(_$MessageAckResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageAckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempId = null,
    Object? message = null,
  }) {
    return _then(_$MessageAckResponseImpl(
      tempId: null == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageAckResponseImpl implements _MessageAckResponse {
  const _$MessageAckResponseImpl({required this.tempId, required this.message});

  factory _$MessageAckResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageAckResponseImplFromJson(json);

  @override
  final String tempId;
  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'MessageAckResponse(tempId: $tempId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAckResponseImpl &&
            (identical(other.tempId, tempId) || other.tempId == tempId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tempId, message);

  /// Create a copy of MessageAckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAckResponseImplCopyWith<_$MessageAckResponseImpl> get copyWith =>
      __$$MessageAckResponseImplCopyWithImpl<_$MessageAckResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAckResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageAckResponse implements MessageAckResponse {
  const factory _MessageAckResponse(
      {required final String tempId,
      required final ChatMessage message}) = _$MessageAckResponseImpl;

  factory _MessageAckResponse.fromJson(Map<String, dynamic> json) =
      _$MessageAckResponseImpl.fromJson;

  @override
  String get tempId;
  @override
  ChatMessage get message;

  /// Create a copy of MessageAckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageAckResponseImplCopyWith<_$MessageAckResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageErrorResponse _$MessageErrorResponseFromJson(Map<String, dynamic> json) {
  return _MessageErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageErrorResponse {
  String get tempId => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this MessageErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageErrorResponseCopyWith<MessageErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageErrorResponseCopyWith<$Res> {
  factory $MessageErrorResponseCopyWith(MessageErrorResponse value,
          $Res Function(MessageErrorResponse) then) =
      _$MessageErrorResponseCopyWithImpl<$Res, MessageErrorResponse>;
  @useResult
  $Res call({String tempId, String error});
}

/// @nodoc
class _$MessageErrorResponseCopyWithImpl<$Res,
        $Val extends MessageErrorResponse>
    implements $MessageErrorResponseCopyWith<$Res> {
  _$MessageErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempId = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      tempId: null == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageErrorResponseImplCopyWith<$Res>
    implements $MessageErrorResponseCopyWith<$Res> {
  factory _$$MessageErrorResponseImplCopyWith(_$MessageErrorResponseImpl value,
          $Res Function(_$MessageErrorResponseImpl) then) =
      __$$MessageErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tempId, String error});
}

/// @nodoc
class __$$MessageErrorResponseImplCopyWithImpl<$Res>
    extends _$MessageErrorResponseCopyWithImpl<$Res, _$MessageErrorResponseImpl>
    implements _$$MessageErrorResponseImplCopyWith<$Res> {
  __$$MessageErrorResponseImplCopyWithImpl(_$MessageErrorResponseImpl _value,
      $Res Function(_$MessageErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempId = null,
    Object? error = null,
  }) {
    return _then(_$MessageErrorResponseImpl(
      tempId: null == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageErrorResponseImpl implements _MessageErrorResponse {
  const _$MessageErrorResponseImpl({required this.tempId, required this.error});

  factory _$MessageErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageErrorResponseImplFromJson(json);

  @override
  final String tempId;
  @override
  final String error;

  @override
  String toString() {
    return 'MessageErrorResponse(tempId: $tempId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageErrorResponseImpl &&
            (identical(other.tempId, tempId) || other.tempId == tempId) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tempId, error);

  /// Create a copy of MessageErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageErrorResponseImplCopyWith<_$MessageErrorResponseImpl>
      get copyWith =>
          __$$MessageErrorResponseImplCopyWithImpl<_$MessageErrorResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageErrorResponse implements MessageErrorResponse {
  const factory _MessageErrorResponse(
      {required final String tempId,
      required final String error}) = _$MessageErrorResponseImpl;

  factory _MessageErrorResponse.fromJson(Map<String, dynamic> json) =
      _$MessageErrorResponseImpl.fromJson;

  @override
  String get tempId;
  @override
  String get error;

  /// Create a copy of MessageErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageErrorResponseImplCopyWith<_$MessageErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
