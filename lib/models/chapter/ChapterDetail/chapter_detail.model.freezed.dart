// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_detail.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterNavigation _$ChapterNavigationFromJson(Map<String, dynamic> json) {
  return _ChapterNavigation.fromJson(json);
}

/// @nodoc
mixin _$ChapterNavigation {
  ChapterInfo? get prevChapter => throw _privateConstructorUsedError;
  ChapterInfo? get nextChapter => throw _privateConstructorUsedError;

  /// Serializes this ChapterNavigation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterNavigation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterNavigationCopyWith<ChapterNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterNavigationCopyWith<$Res> {
  factory $ChapterNavigationCopyWith(
          ChapterNavigation value, $Res Function(ChapterNavigation) then) =
      _$ChapterNavigationCopyWithImpl<$Res, ChapterNavigation>;
  @useResult
  $Res call({ChapterInfo? prevChapter, ChapterInfo? nextChapter});

  $ChapterInfoCopyWith<$Res>? get prevChapter;
  $ChapterInfoCopyWith<$Res>? get nextChapter;
}

/// @nodoc
class _$ChapterNavigationCopyWithImpl<$Res, $Val extends ChapterNavigation>
    implements $ChapterNavigationCopyWith<$Res> {
  _$ChapterNavigationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterNavigation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prevChapter = freezed,
    Object? nextChapter = freezed,
  }) {
    return _then(_value.copyWith(
      prevChapter: freezed == prevChapter
          ? _value.prevChapter
          : prevChapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfo?,
      nextChapter: freezed == nextChapter
          ? _value.nextChapter
          : nextChapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfo?,
    ) as $Val);
  }

  /// Create a copy of ChapterNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterInfoCopyWith<$Res>? get prevChapter {
    if (_value.prevChapter == null) {
      return null;
    }

    return $ChapterInfoCopyWith<$Res>(_value.prevChapter!, (value) {
      return _then(_value.copyWith(prevChapter: value) as $Val);
    });
  }

  /// Create a copy of ChapterNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterInfoCopyWith<$Res>? get nextChapter {
    if (_value.nextChapter == null) {
      return null;
    }

    return $ChapterInfoCopyWith<$Res>(_value.nextChapter!, (value) {
      return _then(_value.copyWith(nextChapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterNavigationImplCopyWith<$Res>
    implements $ChapterNavigationCopyWith<$Res> {
  factory _$$ChapterNavigationImplCopyWith(_$ChapterNavigationImpl value,
          $Res Function(_$ChapterNavigationImpl) then) =
      __$$ChapterNavigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChapterInfo? prevChapter, ChapterInfo? nextChapter});

  @override
  $ChapterInfoCopyWith<$Res>? get prevChapter;
  @override
  $ChapterInfoCopyWith<$Res>? get nextChapter;
}

/// @nodoc
class __$$ChapterNavigationImplCopyWithImpl<$Res>
    extends _$ChapterNavigationCopyWithImpl<$Res, _$ChapterNavigationImpl>
    implements _$$ChapterNavigationImplCopyWith<$Res> {
  __$$ChapterNavigationImplCopyWithImpl(_$ChapterNavigationImpl _value,
      $Res Function(_$ChapterNavigationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterNavigation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prevChapter = freezed,
    Object? nextChapter = freezed,
  }) {
    return _then(_$ChapterNavigationImpl(
      prevChapter: freezed == prevChapter
          ? _value.prevChapter
          : prevChapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfo?,
      nextChapter: freezed == nextChapter
          ? _value.nextChapter
          : nextChapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterNavigationImpl implements _ChapterNavigation {
  const _$ChapterNavigationImpl({this.prevChapter, this.nextChapter});

  factory _$ChapterNavigationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterNavigationImplFromJson(json);

  @override
  final ChapterInfo? prevChapter;
  @override
  final ChapterInfo? nextChapter;

  @override
  String toString() {
    return 'ChapterNavigation(prevChapter: $prevChapter, nextChapter: $nextChapter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterNavigationImpl &&
            (identical(other.prevChapter, prevChapter) ||
                other.prevChapter == prevChapter) &&
            (identical(other.nextChapter, nextChapter) ||
                other.nextChapter == nextChapter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prevChapter, nextChapter);

  /// Create a copy of ChapterNavigation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterNavigationImplCopyWith<_$ChapterNavigationImpl> get copyWith =>
      __$$ChapterNavigationImplCopyWithImpl<_$ChapterNavigationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterNavigationImplToJson(
      this,
    );
  }
}

abstract class _ChapterNavigation implements ChapterNavigation {
  const factory _ChapterNavigation(
      {final ChapterInfo? prevChapter,
      final ChapterInfo? nextChapter}) = _$ChapterNavigationImpl;

  factory _ChapterNavigation.fromJson(Map<String, dynamic> json) =
      _$ChapterNavigationImpl.fromJson;

  @override
  ChapterInfo? get prevChapter;
  @override
  ChapterInfo? get nextChapter;

  /// Create a copy of ChapterNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterNavigationImplCopyWith<_$ChapterNavigationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterInfo _$ChapterInfoFromJson(Map<String, dynamic> json) {
  return _ChapterInfo.fromJson(json);
}

/// @nodoc
mixin _$ChapterInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get chapterName => throw _privateConstructorUsedError;
  String? get chapterTitle => throw _privateConstructorUsedError;
  String? get chapterType => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: '_id') String id,
      int number,
      String chapterName,
      String? chapterTitle,
      String? chapterType,
      int views});
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
    Object? chapterName = null,
    Object? chapterTitle = freezed,
    Object? chapterType = freezed,
    Object? views = null,
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
      chapterName: null == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterType: freezed == chapterType
          ? _value.chapterType
          : chapterType // ignore: cast_nullable_to_non_nullable
              as String?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: '_id') String id,
      int number,
      String chapterName,
      String? chapterTitle,
      String? chapterType,
      int views});
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
    Object? chapterName = null,
    Object? chapterTitle = freezed,
    Object? chapterType = freezed,
    Object? views = null,
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
      chapterName: null == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterType: freezed == chapterType
          ? _value.chapterType
          : chapterType // ignore: cast_nullable_to_non_nullable
              as String?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterInfoImpl implements _ChapterInfo {
  const _$ChapterInfoImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.number,
      required this.chapterName,
      this.chapterTitle,
      this.chapterType,
      this.views = 0});

  factory _$ChapterInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final int number;
  @override
  final String chapterName;
  @override
  final String? chapterTitle;
  @override
  final String? chapterType;
  @override
  @JsonKey()
  final int views;

  @override
  String toString() {
    return 'ChapterInfo(id: $id, number: $number, chapterName: $chapterName, chapterTitle: $chapterTitle, chapterType: $chapterType, views: $views)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.chapterName, chapterName) ||
                other.chapterName == chapterName) &&
            (identical(other.chapterTitle, chapterTitle) ||
                other.chapterTitle == chapterTitle) &&
            (identical(other.chapterType, chapterType) ||
                other.chapterType == chapterType) &&
            (identical(other.views, views) || other.views == views));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, number, chapterName, chapterTitle, chapterType, views);

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
      {@JsonKey(name: '_id') required final String id,
      required final int number,
      required final String chapterName,
      final String? chapterTitle,
      final String? chapterType,
      final int views}) = _$ChapterInfoImpl;

  factory _ChapterInfo.fromJson(Map<String, dynamic> json) =
      _$ChapterInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  int get number;
  @override
  String get chapterName;
  @override
  String? get chapterTitle;
  @override
  String? get chapterType;
  @override
  int get views;

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterInfoImplCopyWith<_$ChapterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaInfo _$MangaInfoFromJson(Map<String, dynamic> json) {
  return _MangaInfo.fromJson(json);
}

/// @nodoc
mixin _$MangaInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: '_id') String id, String title});
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
  $Res call({@JsonKey(name: '_id') String id, String title});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaInfoImpl implements _MangaInfo {
  const _$MangaInfoImpl(
      {@JsonKey(name: '_id') required this.id, required this.title});

  factory _$MangaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'MangaInfo(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

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
      {@JsonKey(name: '_id') required final String id,
      required final String title}) = _$MangaInfoImpl;

  factory _MangaInfo.fromJson(Map<String, dynamic> json) =
      _$MangaInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;

  /// Create a copy of MangaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaInfoImplCopyWith<_$MangaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChapterDetail {
  ChapterInfo get chapterInfo => throw _privateConstructorUsedError;
  MangaInfo get mangaInfo => throw _privateConstructorUsedError;
  List<String> get pagesUrl => throw _privateConstructorUsedError;
  ChapterNavigation? get navigation => throw _privateConstructorUsedError;

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterDetailCopyWith<ChapterDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDetailCopyWith<$Res> {
  factory $ChapterDetailCopyWith(
          ChapterDetail value, $Res Function(ChapterDetail) then) =
      _$ChapterDetailCopyWithImpl<$Res, ChapterDetail>;
  @useResult
  $Res call(
      {ChapterInfo chapterInfo,
      MangaInfo mangaInfo,
      List<String> pagesUrl,
      ChapterNavigation? navigation});

  $ChapterInfoCopyWith<$Res> get chapterInfo;
  $MangaInfoCopyWith<$Res> get mangaInfo;
  $ChapterNavigationCopyWith<$Res>? get navigation;
}

/// @nodoc
class _$ChapterDetailCopyWithImpl<$Res, $Val extends ChapterDetail>
    implements $ChapterDetailCopyWith<$Res> {
  _$ChapterDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapterInfo = null,
    Object? mangaInfo = null,
    Object? pagesUrl = null,
    Object? navigation = freezed,
  }) {
    return _then(_value.copyWith(
      chapterInfo: null == chapterInfo
          ? _value.chapterInfo
          : chapterInfo // ignore: cast_nullable_to_non_nullable
              as ChapterInfo,
      mangaInfo: null == mangaInfo
          ? _value.mangaInfo
          : mangaInfo // ignore: cast_nullable_to_non_nullable
              as MangaInfo,
      pagesUrl: null == pagesUrl
          ? _value.pagesUrl
          : pagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      navigation: freezed == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as ChapterNavigation?,
    ) as $Val);
  }

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterInfoCopyWith<$Res> get chapterInfo {
    return $ChapterInfoCopyWith<$Res>(_value.chapterInfo, (value) {
      return _then(_value.copyWith(chapterInfo: value) as $Val);
    });
  }

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MangaInfoCopyWith<$Res> get mangaInfo {
    return $MangaInfoCopyWith<$Res>(_value.mangaInfo, (value) {
      return _then(_value.copyWith(mangaInfo: value) as $Val);
    });
  }

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterNavigationCopyWith<$Res>? get navigation {
    if (_value.navigation == null) {
      return null;
    }

    return $ChapterNavigationCopyWith<$Res>(_value.navigation!, (value) {
      return _then(_value.copyWith(navigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterDetailImplCopyWith<$Res>
    implements $ChapterDetailCopyWith<$Res> {
  factory _$$ChapterDetailImplCopyWith(
          _$ChapterDetailImpl value, $Res Function(_$ChapterDetailImpl) then) =
      __$$ChapterDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChapterInfo chapterInfo,
      MangaInfo mangaInfo,
      List<String> pagesUrl,
      ChapterNavigation? navigation});

  @override
  $ChapterInfoCopyWith<$Res> get chapterInfo;
  @override
  $MangaInfoCopyWith<$Res> get mangaInfo;
  @override
  $ChapterNavigationCopyWith<$Res>? get navigation;
}

/// @nodoc
class __$$ChapterDetailImplCopyWithImpl<$Res>
    extends _$ChapterDetailCopyWithImpl<$Res, _$ChapterDetailImpl>
    implements _$$ChapterDetailImplCopyWith<$Res> {
  __$$ChapterDetailImplCopyWithImpl(
      _$ChapterDetailImpl _value, $Res Function(_$ChapterDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapterInfo = null,
    Object? mangaInfo = null,
    Object? pagesUrl = null,
    Object? navigation = freezed,
  }) {
    return _then(_$ChapterDetailImpl(
      chapterInfo: null == chapterInfo
          ? _value.chapterInfo
          : chapterInfo // ignore: cast_nullable_to_non_nullable
              as ChapterInfo,
      mangaInfo: null == mangaInfo
          ? _value.mangaInfo
          : mangaInfo // ignore: cast_nullable_to_non_nullable
              as MangaInfo,
      pagesUrl: null == pagesUrl
          ? _value._pagesUrl
          : pagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      navigation: freezed == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as ChapterNavigation?,
    ));
  }
}

/// @nodoc

class _$ChapterDetailImpl implements _ChapterDetail {
  const _$ChapterDetailImpl(
      {required this.chapterInfo,
      required this.mangaInfo,
      required final List<String> pagesUrl,
      this.navigation})
      : _pagesUrl = pagesUrl;

  @override
  final ChapterInfo chapterInfo;
  @override
  final MangaInfo mangaInfo;
  final List<String> _pagesUrl;
  @override
  List<String> get pagesUrl {
    if (_pagesUrl is EqualUnmodifiableListView) return _pagesUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pagesUrl);
  }

  @override
  final ChapterNavigation? navigation;

  @override
  String toString() {
    return 'ChapterDetail(chapterInfo: $chapterInfo, mangaInfo: $mangaInfo, pagesUrl: $pagesUrl, navigation: $navigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterDetailImpl &&
            (identical(other.chapterInfo, chapterInfo) ||
                other.chapterInfo == chapterInfo) &&
            (identical(other.mangaInfo, mangaInfo) ||
                other.mangaInfo == mangaInfo) &&
            const DeepCollectionEquality().equals(other._pagesUrl, _pagesUrl) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chapterInfo, mangaInfo,
      const DeepCollectionEquality().hash(_pagesUrl), navigation);

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterDetailImplCopyWith<_$ChapterDetailImpl> get copyWith =>
      __$$ChapterDetailImplCopyWithImpl<_$ChapterDetailImpl>(this, _$identity);
}

abstract class _ChapterDetail implements ChapterDetail {
  const factory _ChapterDetail(
      {required final ChapterInfo chapterInfo,
      required final MangaInfo mangaInfo,
      required final List<String> pagesUrl,
      final ChapterNavigation? navigation}) = _$ChapterDetailImpl;

  @override
  ChapterInfo get chapterInfo;
  @override
  MangaInfo get mangaInfo;
  @override
  List<String> get pagesUrl;
  @override
  ChapterNavigation? get navigation;

  /// Create a copy of ChapterDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterDetailImplCopyWith<_$ChapterDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
