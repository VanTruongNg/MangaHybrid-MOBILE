// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomId')
  ChatRoom get room => throw _privateConstructorUsedError;
  ChatUser get sender => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<ChatUser> get readBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'roomId') ChatRoom room,
      ChatUser sender,
      String content,
      List<ChatUser> readBy,
      DateTime createdAt});

  $ChatRoomCopyWith<$Res> get room;
  $ChatUserCopyWith<$Res> get sender;
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? room = null,
    Object? sender = null,
    Object? content = null,
    Object? readBy = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      readBy: null == readBy
          ? _value.readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatRoomCopyWith<$Res> get room {
    return $ChatRoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUserCopyWith<$Res> get sender {
    return $ChatUserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'roomId') ChatRoom room,
      ChatUser sender,
      String content,
      List<ChatUser> readBy,
      DateTime createdAt});

  @override
  $ChatRoomCopyWith<$Res> get room;
  @override
  $ChatUserCopyWith<$Res> get sender;
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? room = null,
    Object? sender = null,
    Object? content = null,
    Object? readBy = null,
    Object? createdAt = null,
  }) {
    return _then(_$ChatMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      readBy: null == readBy
          ? _value._readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl(
      {required this.id,
      @JsonKey(name: 'roomId') required this.room,
      required this.sender,
      required this.content,
      required final List<ChatUser> readBy,
      required this.createdAt})
      : _readBy = readBy;

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'roomId')
  final ChatRoom room;
  @override
  final ChatUser sender;
  @override
  final String content;
  final List<ChatUser> _readBy;
  @override
  List<ChatUser> get readBy {
    if (_readBy is EqualUnmodifiableListView) return _readBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readBy);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ChatMessage(id: $id, room: $room, sender: $sender, content: $content, readBy: $readBy, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._readBy, _readBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, room, sender, content,
      const DeepCollectionEquality().hash(_readBy), createdAt);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required final String id,
      @JsonKey(name: 'roomId') required final ChatRoom room,
      required final ChatUser sender,
      required final String content,
      required final List<ChatUser> readBy,
      required final DateTime createdAt}) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'roomId')
  ChatRoom get room;
  @override
  ChatUser get sender;
  @override
  String get content;
  @override
  List<ChatUser> get readBy;
  @override
  DateTime get createdAt;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivateChatMessage _$PrivateChatMessageFromJson(Map<String, dynamic> json) {
  return _PrivateChatMessage.fromJson(json);
}

/// @nodoc
mixin _$PrivateChatMessage {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomId')
  String get roomId => throw _privateConstructorUsedError;
  ChatUser get sender => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get readBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get version => throw _privateConstructorUsedError;

  /// Serializes this PrivateChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivateChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivateChatMessageCopyWith<PrivateChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateChatMessageCopyWith<$Res> {
  factory $PrivateChatMessageCopyWith(
          PrivateChatMessage value, $Res Function(PrivateChatMessage) then) =
      _$PrivateChatMessageCopyWithImpl<$Res, PrivateChatMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'roomId') String roomId,
      ChatUser sender,
      String content,
      List<String> readBy,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__v') int version});

  $ChatUserCopyWith<$Res> get sender;
}

/// @nodoc
class _$PrivateChatMessageCopyWithImpl<$Res, $Val extends PrivateChatMessage>
    implements $PrivateChatMessageCopyWith<$Res> {
  _$PrivateChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivateChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? sender = null,
    Object? content = null,
    Object? readBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      readBy: null == readBy
          ? _value.readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PrivateChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUserCopyWith<$Res> get sender {
    return $ChatUserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrivateChatMessageImplCopyWith<$Res>
    implements $PrivateChatMessageCopyWith<$Res> {
  factory _$$PrivateChatMessageImplCopyWith(_$PrivateChatMessageImpl value,
          $Res Function(_$PrivateChatMessageImpl) then) =
      __$$PrivateChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'roomId') String roomId,
      ChatUser sender,
      String content,
      List<String> readBy,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__v') int version});

  @override
  $ChatUserCopyWith<$Res> get sender;
}

/// @nodoc
class __$$PrivateChatMessageImplCopyWithImpl<$Res>
    extends _$PrivateChatMessageCopyWithImpl<$Res, _$PrivateChatMessageImpl>
    implements _$$PrivateChatMessageImplCopyWith<$Res> {
  __$$PrivateChatMessageImplCopyWithImpl(_$PrivateChatMessageImpl _value,
      $Res Function(_$PrivateChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivateChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? sender = null,
    Object? content = null,
    Object? readBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_$PrivateChatMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      readBy: null == readBy
          ? _value._readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivateChatMessageImpl implements _PrivateChatMessage {
  const _$PrivateChatMessageImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'roomId') required this.roomId,
      required this.sender,
      required this.content,
      required final List<String> readBy,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: '__v') required this.version})
      : _readBy = readBy;

  factory _$PrivateChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivateChatMessageImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'roomId')
  final String roomId;
  @override
  final ChatUser sender;
  @override
  final String content;
  final List<String> _readBy;
  @override
  List<String> get readBy {
    if (_readBy is EqualUnmodifiableListView) return _readBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readBy);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: '__v')
  final int version;

  @override
  String toString() {
    return 'PrivateChatMessage(id: $id, roomId: $roomId, sender: $sender, content: $content, readBy: $readBy, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateChatMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._readBy, _readBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomId,
      sender,
      content,
      const DeepCollectionEquality().hash(_readBy),
      createdAt,
      updatedAt,
      version);

  /// Create a copy of PrivateChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateChatMessageImplCopyWith<_$PrivateChatMessageImpl> get copyWith =>
      __$$PrivateChatMessageImplCopyWithImpl<_$PrivateChatMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivateChatMessageImplToJson(
      this,
    );
  }
}

abstract class _PrivateChatMessage implements PrivateChatMessage {
  const factory _PrivateChatMessage(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'roomId') required final String roomId,
          required final ChatUser sender,
          required final String content,
          required final List<String> readBy,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          @JsonKey(name: '__v') required final int version}) =
      _$PrivateChatMessageImpl;

  factory _PrivateChatMessage.fromJson(Map<String, dynamic> json) =
      _$PrivateChatMessageImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'roomId')
  String get roomId;
  @override
  ChatUser get sender;
  @override
  String get content;
  @override
  List<String> get readBy;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: '__v')
  int get version;

  /// Create a copy of PrivateChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivateChatMessageImplCopyWith<_$PrivateChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatMessageUI {
  ChatMessage get message => throw _privateConstructorUsedError;
  String? get tempId => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageUICopyWith<ChatMessageUI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageUICopyWith<$Res> {
  factory $ChatMessageUICopyWith(
          ChatMessageUI value, $Res Function(ChatMessageUI) then) =
      _$ChatMessageUICopyWithImpl<$Res, ChatMessageUI>;
  @useResult
  $Res call(
      {ChatMessage message, String? tempId, bool isSending, String? error});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatMessageUICopyWithImpl<$Res, $Val extends ChatMessageUI>
    implements $ChatMessageUICopyWith<$Res> {
  _$ChatMessageUICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? tempId = freezed,
    Object? isSending = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      tempId: freezed == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ChatMessageUI
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
abstract class _$$ChatMessageUIImplCopyWith<$Res>
    implements $ChatMessageUICopyWith<$Res> {
  factory _$$ChatMessageUIImplCopyWith(
          _$ChatMessageUIImpl value, $Res Function(_$ChatMessageUIImpl) then) =
      __$$ChatMessageUIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatMessage message, String? tempId, bool isSending, String? error});

  @override
  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChatMessageUIImplCopyWithImpl<$Res>
    extends _$ChatMessageUICopyWithImpl<$Res, _$ChatMessageUIImpl>
    implements _$$ChatMessageUIImplCopyWith<$Res> {
  __$$ChatMessageUIImplCopyWithImpl(
      _$ChatMessageUIImpl _value, $Res Function(_$ChatMessageUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? tempId = freezed,
    Object? isSending = null,
    Object? error = freezed,
  }) {
    return _then(_$ChatMessageUIImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      tempId: freezed == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatMessageUIImpl implements _ChatMessageUI {
  const _$ChatMessageUIImpl(
      {required this.message, this.tempId, this.isSending = false, this.error});

  @override
  final ChatMessage message;
  @override
  final String? tempId;
  @override
  @JsonKey()
  final bool isSending;
  @override
  final String? error;

  @override
  String toString() {
    return 'ChatMessageUI(message: $message, tempId: $tempId, isSending: $isSending, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageUIImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.tempId, tempId) || other.tempId == tempId) &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, tempId, isSending, error);

  /// Create a copy of ChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageUIImplCopyWith<_$ChatMessageUIImpl> get copyWith =>
      __$$ChatMessageUIImplCopyWithImpl<_$ChatMessageUIImpl>(this, _$identity);
}

abstract class _ChatMessageUI implements ChatMessageUI {
  const factory _ChatMessageUI(
      {required final ChatMessage message,
      final String? tempId,
      final bool isSending,
      final String? error}) = _$ChatMessageUIImpl;

  @override
  ChatMessage get message;
  @override
  String? get tempId;
  @override
  bool get isSending;
  @override
  String? get error;

  /// Create a copy of ChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageUIImplCopyWith<_$ChatMessageUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrivateChatMessageUI {
  PrivateChatMessage get message => throw _privateConstructorUsedError;
  String? get tempId => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of PrivateChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivateChatMessageUICopyWith<PrivateChatMessageUI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateChatMessageUICopyWith<$Res> {
  factory $PrivateChatMessageUICopyWith(PrivateChatMessageUI value,
          $Res Function(PrivateChatMessageUI) then) =
      _$PrivateChatMessageUICopyWithImpl<$Res, PrivateChatMessageUI>;
  @useResult
  $Res call(
      {PrivateChatMessage message,
      String? tempId,
      bool isSending,
      String? error});

  $PrivateChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$PrivateChatMessageUICopyWithImpl<$Res,
        $Val extends PrivateChatMessageUI>
    implements $PrivateChatMessageUICopyWith<$Res> {
  _$PrivateChatMessageUICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivateChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? tempId = freezed,
    Object? isSending = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PrivateChatMessage,
      tempId: freezed == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PrivateChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrivateChatMessageCopyWith<$Res> get message {
    return $PrivateChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrivateChatMessageUIImplCopyWith<$Res>
    implements $PrivateChatMessageUICopyWith<$Res> {
  factory _$$PrivateChatMessageUIImplCopyWith(_$PrivateChatMessageUIImpl value,
          $Res Function(_$PrivateChatMessageUIImpl) then) =
      __$$PrivateChatMessageUIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PrivateChatMessage message,
      String? tempId,
      bool isSending,
      String? error});

  @override
  $PrivateChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$PrivateChatMessageUIImplCopyWithImpl<$Res>
    extends _$PrivateChatMessageUICopyWithImpl<$Res, _$PrivateChatMessageUIImpl>
    implements _$$PrivateChatMessageUIImplCopyWith<$Res> {
  __$$PrivateChatMessageUIImplCopyWithImpl(_$PrivateChatMessageUIImpl _value,
      $Res Function(_$PrivateChatMessageUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivateChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? tempId = freezed,
    Object? isSending = null,
    Object? error = freezed,
  }) {
    return _then(_$PrivateChatMessageUIImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PrivateChatMessage,
      tempId: freezed == tempId
          ? _value.tempId
          : tempId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PrivateChatMessageUIImpl implements _PrivateChatMessageUI {
  const _$PrivateChatMessageUIImpl(
      {required this.message, this.tempId, this.isSending = false, this.error});

  @override
  final PrivateChatMessage message;
  @override
  final String? tempId;
  @override
  @JsonKey()
  final bool isSending;
  @override
  final String? error;

  @override
  String toString() {
    return 'PrivateChatMessageUI(message: $message, tempId: $tempId, isSending: $isSending, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateChatMessageUIImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.tempId, tempId) || other.tempId == tempId) &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, tempId, isSending, error);

  /// Create a copy of PrivateChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateChatMessageUIImplCopyWith<_$PrivateChatMessageUIImpl>
      get copyWith =>
          __$$PrivateChatMessageUIImplCopyWithImpl<_$PrivateChatMessageUIImpl>(
              this, _$identity);
}

abstract class _PrivateChatMessageUI implements PrivateChatMessageUI {
  const factory _PrivateChatMessageUI(
      {required final PrivateChatMessage message,
      final String? tempId,
      final bool isSending,
      final String? error}) = _$PrivateChatMessageUIImpl;

  @override
  PrivateChatMessage get message;
  @override
  String? get tempId;
  @override
  bool get isSending;
  @override
  String? get error;

  /// Create a copy of PrivateChatMessageUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivateChatMessageUIImplCopyWith<_$PrivateChatMessageUIImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChatUser _$ChatUserFromJson(Map<String, dynamic> json) {
  return _ChatUser.fromJson(json);
}

/// @nodoc
mixin _$ChatUser {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this ChatUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatUserCopyWith<ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserCopyWith<$Res> {
  factory $ChatUserCopyWith(ChatUser value, $Res Function(ChatUser) then) =
      _$ChatUserCopyWithImpl<$Res, ChatUser>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String? avatarUrl});
}

/// @nodoc
class _$ChatUserCopyWithImpl<$Res, $Val extends ChatUser>
    implements $ChatUserCopyWith<$Res> {
  _$ChatUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatUserImplCopyWith<$Res>
    implements $ChatUserCopyWith<$Res> {
  factory _$$ChatUserImplCopyWith(
          _$ChatUserImpl value, $Res Function(_$ChatUserImpl) then) =
      __$$ChatUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String? avatarUrl});
}

/// @nodoc
class __$$ChatUserImplCopyWithImpl<$Res>
    extends _$ChatUserCopyWithImpl<$Res, _$ChatUserImpl>
    implements _$$ChatUserImplCopyWith<$Res> {
  __$$ChatUserImplCopyWithImpl(
      _$ChatUserImpl _value, $Res Function(_$ChatUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$ChatUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatUserImpl implements _ChatUser {
  const _$ChatUserImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.avatarUrl});

  factory _$ChatUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatUserImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'ChatUser(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  /// Create a copy of ChatUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUserImplCopyWith<_$ChatUserImpl> get copyWith =>
      __$$ChatUserImplCopyWithImpl<_$ChatUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatUserImplToJson(
      this,
    );
  }
}

abstract class _ChatUser implements ChatUser {
  const factory _ChatUser(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final String? avatarUrl}) = _$ChatUserImpl;

  factory _ChatUser.fromJson(Map<String, dynamic> json) =
      _$ChatUserImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get avatarUrl;

  /// Create a copy of ChatUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatUserImplCopyWith<_$ChatUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
mixin _$ChatRoom {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get version => throw _privateConstructorUsedError;

  /// Serializes this ChatRoom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res, ChatRoom>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String type,
      List<String> participants,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__v') int version});
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res, $Val extends ChatRoom>
    implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? participants = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomImplCopyWith<$Res>
    implements $ChatRoomCopyWith<$Res> {
  factory _$$ChatRoomImplCopyWith(
          _$ChatRoomImpl value, $Res Function(_$ChatRoomImpl) then) =
      __$$ChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String type,
      List<String> participants,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__v') int version});
}

/// @nodoc
class __$$ChatRoomImplCopyWithImpl<$Res>
    extends _$ChatRoomCopyWithImpl<$Res, _$ChatRoomImpl>
    implements _$$ChatRoomImplCopyWith<$Res> {
  __$$ChatRoomImplCopyWithImpl(
      _$ChatRoomImpl _value, $Res Function(_$ChatRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? participants = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_$ChatRoomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomImpl implements _ChatRoom {
  const _$ChatRoomImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.type,
      required final List<String> participants,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: '__v') required this.version})
      : _participants = participants;

  factory _$ChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String type;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: '__v')
  final int version;

  @override
  String toString() {
    return 'ChatRoom(id: $id, type: $type, participants: $participants, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      const DeepCollectionEquality().hash(_participants),
      isActive,
      createdAt,
      updatedAt,
      version);

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      __$$ChatRoomImplCopyWithImpl<_$ChatRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomImplToJson(
      this,
    );
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom(
      {@JsonKey(name: '_id') required final String id,
      required final String type,
      required final List<String> participants,
      required final bool isActive,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: '__v') required final int version}) = _$ChatRoomImpl;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) =
      _$ChatRoomImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get type;
  @override
  List<String> get participants;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: '__v')
  int get version;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
