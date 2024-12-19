// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_reply.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentReply _$CommentReplyFromJson(Map<String, dynamic> json) {
  return _CommentReply.fromJson(json);
}

/// @nodoc
mixin _$CommentReply {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  UploaderInfo get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<ReplyInfo> get replies => throw _privateConstructorUsedError;
  String? get manga => throw _privateConstructorUsedError;
  String? get parentComment => throw _privateConstructorUsedError;
  UploaderInfo? get replyToUser => throw _privateConstructorUsedError;
  List<MentionInfo> get mentions => throw _privateConstructorUsedError;

  /// Serializes this CommentReply to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentReplyCopyWith<CommentReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReplyCopyWith<$Res> {
  factory $CommentReplyCopyWith(
          CommentReply value, $Res Function(CommentReply) then) =
      _$CommentReplyCopyWithImpl<$Res, CommentReply>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      UploaderInfo user,
      DateTime createdAt,
      List<ReplyInfo> replies,
      String? manga,
      String? parentComment,
      UploaderInfo? replyToUser,
      List<MentionInfo> mentions});

  $UploaderInfoCopyWith<$Res> get user;
  $UploaderInfoCopyWith<$Res>? get replyToUser;
}

/// @nodoc
class _$CommentReplyCopyWithImpl<$Res, $Val extends CommentReply>
    implements $CommentReplyCopyWith<$Res> {
  _$CommentReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? user = null,
    Object? createdAt = null,
    Object? replies = null,
    Object? manga = freezed,
    Object? parentComment = freezed,
    Object? replyToUser = freezed,
    Object? mentions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UploaderInfo,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReplyInfo>,
      manga: freezed == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as String?,
      parentComment: freezed == parentComment
          ? _value.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as String?,
      replyToUser: freezed == replyToUser
          ? _value.replyToUser
          : replyToUser // ignore: cast_nullable_to_non_nullable
              as UploaderInfo?,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<MentionInfo>,
    ) as $Val);
  }

  /// Create a copy of CommentReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploaderInfoCopyWith<$Res> get user {
    return $UploaderInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of CommentReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploaderInfoCopyWith<$Res>? get replyToUser {
    if (_value.replyToUser == null) {
      return null;
    }

    return $UploaderInfoCopyWith<$Res>(_value.replyToUser!, (value) {
      return _then(_value.copyWith(replyToUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentReplyImplCopyWith<$Res>
    implements $CommentReplyCopyWith<$Res> {
  factory _$$CommentReplyImplCopyWith(
          _$CommentReplyImpl value, $Res Function(_$CommentReplyImpl) then) =
      __$$CommentReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      UploaderInfo user,
      DateTime createdAt,
      List<ReplyInfo> replies,
      String? manga,
      String? parentComment,
      UploaderInfo? replyToUser,
      List<MentionInfo> mentions});

  @override
  $UploaderInfoCopyWith<$Res> get user;
  @override
  $UploaderInfoCopyWith<$Res>? get replyToUser;
}

/// @nodoc
class __$$CommentReplyImplCopyWithImpl<$Res>
    extends _$CommentReplyCopyWithImpl<$Res, _$CommentReplyImpl>
    implements _$$CommentReplyImplCopyWith<$Res> {
  __$$CommentReplyImplCopyWithImpl(
      _$CommentReplyImpl _value, $Res Function(_$CommentReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? user = null,
    Object? createdAt = null,
    Object? replies = null,
    Object? manga = freezed,
    Object? parentComment = freezed,
    Object? replyToUser = freezed,
    Object? mentions = null,
  }) {
    return _then(_$CommentReplyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UploaderInfo,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReplyInfo>,
      manga: freezed == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as String?,
      parentComment: freezed == parentComment
          ? _value.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as String?,
      replyToUser: freezed == replyToUser
          ? _value.replyToUser
          : replyToUser // ignore: cast_nullable_to_non_nullable
              as UploaderInfo?,
      mentions: null == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<MentionInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentReplyImpl implements _CommentReply {
  const _$CommentReplyImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.content,
      required this.user,
      required this.createdAt,
      final List<ReplyInfo> replies = const [],
      this.manga,
      this.parentComment,
      this.replyToUser,
      final List<MentionInfo> mentions = const []})
      : _replies = replies,
        _mentions = mentions;

  factory _$CommentReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentReplyImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String content;
  @override
  final UploaderInfo user;
  @override
  final DateTime createdAt;
  final List<ReplyInfo> _replies;
  @override
  @JsonKey()
  List<ReplyInfo> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  final String? manga;
  @override
  final String? parentComment;
  @override
  final UploaderInfo? replyToUser;
  final List<MentionInfo> _mentions;
  @override
  @JsonKey()
  List<MentionInfo> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  @override
  String toString() {
    return 'CommentReply(id: $id, content: $content, user: $user, createdAt: $createdAt, replies: $replies, manga: $manga, parentComment: $parentComment, replyToUser: $replyToUser, mentions: $mentions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReplyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment) &&
            (identical(other.replyToUser, replyToUser) ||
                other.replyToUser == replyToUser) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      user,
      createdAt,
      const DeepCollectionEquality().hash(_replies),
      manga,
      parentComment,
      replyToUser,
      const DeepCollectionEquality().hash(_mentions));

  /// Create a copy of CommentReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentReplyImplCopyWith<_$CommentReplyImpl> get copyWith =>
      __$$CommentReplyImplCopyWithImpl<_$CommentReplyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentReplyImplToJson(
      this,
    );
  }
}

abstract class _CommentReply implements CommentReply {
  const factory _CommentReply(
      {@JsonKey(name: '_id') required final String id,
      required final String content,
      required final UploaderInfo user,
      required final DateTime createdAt,
      final List<ReplyInfo> replies,
      final String? manga,
      final String? parentComment,
      final UploaderInfo? replyToUser,
      final List<MentionInfo> mentions}) = _$CommentReplyImpl;

  factory _CommentReply.fromJson(Map<String, dynamic> json) =
      _$CommentReplyImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get content;
  @override
  UploaderInfo get user;
  @override
  DateTime get createdAt;
  @override
  List<ReplyInfo> get replies;
  @override
  String? get manga;
  @override
  String? get parentComment;
  @override
  UploaderInfo? get replyToUser;
  @override
  List<MentionInfo> get mentions;

  /// Create a copy of CommentReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentReplyImplCopyWith<_$CommentReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MentionInfo _$MentionInfoFromJson(Map<String, dynamic> json) {
  return _MentionInfo.fromJson(json);
}

/// @nodoc
mixin _$MentionInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  UploaderInfo get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;

  /// Serializes this MentionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentionInfoCopyWith<MentionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionInfoCopyWith<$Res> {
  factory $MentionInfoCopyWith(
          MentionInfo value, $Res Function(MentionInfo) then) =
      _$MentionInfoCopyWithImpl<$Res, MentionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      UploaderInfo userId,
      String username,
      int startIndex,
      int endIndex});

  $UploaderInfoCopyWith<$Res> get userId;
}

/// @nodoc
class _$MentionInfoCopyWithImpl<$Res, $Val extends MentionInfo>
    implements $MentionInfoCopyWith<$Res> {
  _$MentionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? username = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UploaderInfo,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MentionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploaderInfoCopyWith<$Res> get userId {
    return $UploaderInfoCopyWith<$Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MentionInfoImplCopyWith<$Res>
    implements $MentionInfoCopyWith<$Res> {
  factory _$$MentionInfoImplCopyWith(
          _$MentionInfoImpl value, $Res Function(_$MentionInfoImpl) then) =
      __$$MentionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      UploaderInfo userId,
      String username,
      int startIndex,
      int endIndex});

  @override
  $UploaderInfoCopyWith<$Res> get userId;
}

/// @nodoc
class __$$MentionInfoImplCopyWithImpl<$Res>
    extends _$MentionInfoCopyWithImpl<$Res, _$MentionInfoImpl>
    implements _$$MentionInfoImplCopyWith<$Res> {
  __$$MentionInfoImplCopyWithImpl(
      _$MentionInfoImpl _value, $Res Function(_$MentionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? username = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_$MentionInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UploaderInfo,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentionInfoImpl implements _MentionInfo {
  const _$MentionInfoImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.userId,
      required this.username,
      required this.startIndex,
      required this.endIndex});

  factory _$MentionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentionInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final UploaderInfo userId;
  @override
  final String username;
  @override
  final int startIndex;
  @override
  final int endIndex;

  @override
  String toString() {
    return 'MentionInfo(id: $id, userId: $userId, username: $username, startIndex: $startIndex, endIndex: $endIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentionInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, username, startIndex, endIndex);

  /// Create a copy of MentionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentionInfoImplCopyWith<_$MentionInfoImpl> get copyWith =>
      __$$MentionInfoImplCopyWithImpl<_$MentionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentionInfoImplToJson(
      this,
    );
  }
}

abstract class _MentionInfo implements MentionInfo {
  const factory _MentionInfo(
      {@JsonKey(name: '_id') required final String id,
      required final UploaderInfo userId,
      required final String username,
      required final int startIndex,
      required final int endIndex}) = _$MentionInfoImpl;

  factory _MentionInfo.fromJson(Map<String, dynamic> json) =
      _$MentionInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  UploaderInfo get userId;
  @override
  String get username;
  @override
  int get startIndex;
  @override
  int get endIndex;

  /// Create a copy of MentionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentionInfoImplCopyWith<_$MentionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
