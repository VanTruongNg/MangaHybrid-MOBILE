// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MangaInfo? get manga => throw _privateConstructorUsedError;
  ChapterInfo? get chapter => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {String id,
      String type,
      String message,
      MangaInfo? manga,
      ChapterInfo? chapter,
      bool isRead,
      DateTime createdAt});

  $MangaInfoCopyWith<$Res>? get manga;
  $ChapterInfoCopyWith<$Res>? get chapter;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? message = null,
    Object? manga = freezed,
    Object? chapter = freezed,
    Object? isRead = null,
    Object? createdAt = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      manga: freezed == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaInfo?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfo?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MangaInfoCopyWith<$Res>? get manga {
    if (_value.manga == null) {
      return null;
    }

    return $MangaInfoCopyWith<$Res>(_value.manga!, (value) {
      return _then(_value.copyWith(manga: value) as $Val);
    });
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterInfoCopyWith<$Res>? get chapter {
    if (_value.chapter == null) {
      return null;
    }

    return $ChapterInfoCopyWith<$Res>(_value.chapter!, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String message,
      MangaInfo? manga,
      ChapterInfo? chapter,
      bool isRead,
      DateTime createdAt});

  @override
  $MangaInfoCopyWith<$Res>? get manga;
  @override
  $ChapterInfoCopyWith<$Res>? get chapter;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? message = null,
    Object? manga = freezed,
    Object? chapter = freezed,
    Object? isRead = null,
    Object? createdAt = null,
  }) {
    return _then(_$NotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      manga: freezed == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaInfo?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfo?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl(
      {required this.id,
      required this.type,
      required this.message,
      this.manga,
      this.chapter,
      required this.isRead,
      required this.createdAt});

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String message;
  @override
  final MangaInfo? manga;
  @override
  final ChapterInfo? chapter;
  @override
  final bool isRead;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'NotificationModel(id: $id, type: $type, message: $message, manga: $manga, chapter: $chapter, isRead: $isRead, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, message, manga, chapter, isRead, createdAt);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
      {required final String id,
      required final String type,
      required final String message,
      final MangaInfo? manga,
      final ChapterInfo? chapter,
      required final bool isRead,
      required final DateTime createdAt}) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get message;
  @override
  MangaInfo? get manga;
  @override
  ChapterInfo? get chapter;
  @override
  bool get isRead;
  @override
  DateTime get createdAt;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaInfo _$MangaInfoFromJson(Map<String, dynamic> json) {
  return _MangaInfo.fromJson(json);
}

/// @nodoc
mixin _$MangaInfo {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get coverImg => throw _privateConstructorUsedError;

  /// Serializes this MangaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaInfoCopyWith<MangaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaInfoCopyWith<$Res> {
  factory $MangaInfoCopyWith(MangaInfo value, $Res Function(MangaInfo) then) =
      _$MangaInfoCopyWithImpl<$Res, MangaInfo>;
  @useResult
  $Res call({String id, String title, String coverImg});
}

/// @nodoc
class _$MangaInfoCopyWithImpl<$Res, $Val extends MangaInfo>
    implements $MangaInfoCopyWith<$Res> {
  _$MangaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? coverImg = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImg: null == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaInfoImplCopyWith<$Res>
    implements $MangaInfoCopyWith<$Res> {
  factory _$$MangaInfoImplCopyWith(
          _$MangaInfoImpl value, $Res Function(_$MangaInfoImpl) then) =
      __$$MangaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String coverImg});
}

/// @nodoc
class __$$MangaInfoImplCopyWithImpl<$Res>
    extends _$MangaInfoCopyWithImpl<$Res, _$MangaInfoImpl>
    implements _$$MangaInfoImplCopyWith<$Res> {
  __$$MangaInfoImplCopyWithImpl(
      _$MangaInfoImpl _value, $Res Function(_$MangaInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? coverImg = null,
  }) {
    return _then(_$MangaInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImg: null == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaInfoImpl implements _MangaInfo {
  const _$MangaInfoImpl(
      {required this.id, required this.title, required this.coverImg});

  factory _$MangaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String coverImg;

  @override
  String toString() {
    return 'MangaInfo(id: $id, title: $title, coverImg: $coverImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, coverImg);

  /// Create a copy of MangaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaInfoImplCopyWith<_$MangaInfoImpl> get copyWith =>
      __$$MangaInfoImplCopyWithImpl<_$MangaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaInfoImplToJson(
      this,
    );
  }
}

abstract class _MangaInfo implements MangaInfo {
  const factory _MangaInfo(
      {required final String id,
      required final String title,
      required final String coverImg}) = _$MangaInfoImpl;

  factory _MangaInfo.fromJson(Map<String, dynamic> json) =
      _$MangaInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get coverImg;

  /// Create a copy of MangaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaInfoImplCopyWith<_$MangaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterInfo _$ChapterInfoFromJson(Map<String, dynamic> json) {
  return _ChapterInfo.fromJson(json);
}

/// @nodoc
mixin _$ChapterInfo {
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  /// Serializes this ChapterInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterInfoCopyWith<ChapterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterInfoCopyWith<$Res> {
  factory $ChapterInfoCopyWith(
          ChapterInfo value, $Res Function(ChapterInfo) then) =
      _$ChapterInfoCopyWithImpl<$Res, ChapterInfo>;
  @useResult
  $Res call({String id, int number});
}

/// @nodoc
class _$ChapterInfoCopyWithImpl<$Res, $Val extends ChapterInfo>
    implements $ChapterInfoCopyWith<$Res> {
  _$ChapterInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterInfoImplCopyWith<$Res>
    implements $ChapterInfoCopyWith<$Res> {
  factory _$$ChapterInfoImplCopyWith(
          _$ChapterInfoImpl value, $Res Function(_$ChapterInfoImpl) then) =
      __$$ChapterInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int number});
}

/// @nodoc
class __$$ChapterInfoImplCopyWithImpl<$Res>
    extends _$ChapterInfoCopyWithImpl<$Res, _$ChapterInfoImpl>
    implements _$$ChapterInfoImplCopyWith<$Res> {
  __$$ChapterInfoImplCopyWithImpl(
      _$ChapterInfoImpl _value, $Res Function(_$ChapterInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
  }) {
    return _then(_$ChapterInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterInfoImpl implements _ChapterInfo {
  const _$ChapterInfoImpl({required this.id, required this.number});

  factory _$ChapterInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterInfoImplFromJson(json);

  @override
  final String id;
  @override
  final int number;

  @override
  String toString() {
    return 'ChapterInfo(id: $id, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number);

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterInfoImplCopyWith<_$ChapterInfoImpl> get copyWith =>
      __$$ChapterInfoImplCopyWithImpl<_$ChapterInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterInfoImplToJson(
      this,
    );
  }
}

abstract class _ChapterInfo implements ChapterInfo {
  const factory _ChapterInfo(
      {required final String id,
      required final int number}) = _$ChapterInfoImpl;

  factory _ChapterInfo.fromJson(Map<String, dynamic> json) =
      _$ChapterInfoImpl.fromJson;

  @override
  String get id;
  @override
  int get number;

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterInfoImplCopyWith<_$ChapterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
