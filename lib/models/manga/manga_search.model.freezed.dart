// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_search.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaSearchResult _$MangaSearchResultFromJson(Map<String, dynamic> json) {
  return _MangaSearchResult.fromJson(json);
}

/// @nodoc
mixin _$MangaSearchResult {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get coverImg => throw _privateConstructorUsedError;
  MangaSearchUploader get uploader => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  /// Serializes this MangaSearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaSearchResultCopyWith<MangaSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaSearchResultCopyWith<$Res> {
  factory $MangaSearchResultCopyWith(
          MangaSearchResult value, $Res Function(MangaSearchResult) then) =
      _$MangaSearchResultCopyWithImpl<$Res, MangaSearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String author,
      String coverImg,
      MangaSearchUploader uploader,
      double score});

  $MangaSearchUploaderCopyWith<$Res> get uploader;
}

/// @nodoc
class _$MangaSearchResultCopyWithImpl<$Res, $Val extends MangaSearchResult>
    implements $MangaSearchResultCopyWith<$Res> {
  _$MangaSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? coverImg = null,
    Object? uploader = null,
    Object? score = null,
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
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      coverImg: null == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as MangaSearchUploader,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of MangaSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MangaSearchUploaderCopyWith<$Res> get uploader {
    return $MangaSearchUploaderCopyWith<$Res>(_value.uploader, (value) {
      return _then(_value.copyWith(uploader: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaSearchResultImplCopyWith<$Res>
    implements $MangaSearchResultCopyWith<$Res> {
  factory _$$MangaSearchResultImplCopyWith(_$MangaSearchResultImpl value,
          $Res Function(_$MangaSearchResultImpl) then) =
      __$$MangaSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String author,
      String coverImg,
      MangaSearchUploader uploader,
      double score});

  @override
  $MangaSearchUploaderCopyWith<$Res> get uploader;
}

/// @nodoc
class __$$MangaSearchResultImplCopyWithImpl<$Res>
    extends _$MangaSearchResultCopyWithImpl<$Res, _$MangaSearchResultImpl>
    implements _$$MangaSearchResultImplCopyWith<$Res> {
  __$$MangaSearchResultImplCopyWithImpl(_$MangaSearchResultImpl _value,
      $Res Function(_$MangaSearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? coverImg = null,
    Object? uploader = null,
    Object? score = null,
  }) {
    return _then(_$MangaSearchResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      coverImg: null == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as MangaSearchUploader,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaSearchResultImpl implements _MangaSearchResult {
  const _$MangaSearchResultImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.author,
      required this.coverImg,
      required this.uploader,
      required this.score});

  factory _$MangaSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaSearchResultImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String author;
  @override
  final String coverImg;
  @override
  final MangaSearchUploader uploader;
  @override
  final double score;

  @override
  String toString() {
    return 'MangaSearchResult(id: $id, title: $title, author: $author, coverImg: $coverImg, uploader: $uploader, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaSearchResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, author, coverImg, uploader, score);

  /// Create a copy of MangaSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaSearchResultImplCopyWith<_$MangaSearchResultImpl> get copyWith =>
      __$$MangaSearchResultImplCopyWithImpl<_$MangaSearchResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaSearchResultImplToJson(
      this,
    );
  }
}

abstract class _MangaSearchResult implements MangaSearchResult {
  const factory _MangaSearchResult(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String author,
      required final String coverImg,
      required final MangaSearchUploader uploader,
      required final double score}) = _$MangaSearchResultImpl;

  factory _MangaSearchResult.fromJson(Map<String, dynamic> json) =
      _$MangaSearchResultImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String get coverImg;
  @override
  MangaSearchUploader get uploader;
  @override
  double get score;

  /// Create a copy of MangaSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaSearchResultImplCopyWith<_$MangaSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaSearchUploader _$MangaSearchUploaderFromJson(Map<String, dynamic> json) {
  return _MangaSearchUploader.fromJson(json);
}

/// @nodoc
mixin _$MangaSearchUploader {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this MangaSearchUploader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaSearchUploader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaSearchUploaderCopyWith<MangaSearchUploader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaSearchUploaderCopyWith<$Res> {
  factory $MangaSearchUploaderCopyWith(
          MangaSearchUploader value, $Res Function(MangaSearchUploader) then) =
      _$MangaSearchUploaderCopyWithImpl<$Res, MangaSearchUploader>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String? avatarUrl});
}

/// @nodoc
class _$MangaSearchUploaderCopyWithImpl<$Res, $Val extends MangaSearchUploader>
    implements $MangaSearchUploaderCopyWith<$Res> {
  _$MangaSearchUploaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaSearchUploader
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
abstract class _$$MangaSearchUploaderImplCopyWith<$Res>
    implements $MangaSearchUploaderCopyWith<$Res> {
  factory _$$MangaSearchUploaderImplCopyWith(_$MangaSearchUploaderImpl value,
          $Res Function(_$MangaSearchUploaderImpl) then) =
      __$$MangaSearchUploaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String? avatarUrl});
}

/// @nodoc
class __$$MangaSearchUploaderImplCopyWithImpl<$Res>
    extends _$MangaSearchUploaderCopyWithImpl<$Res, _$MangaSearchUploaderImpl>
    implements _$$MangaSearchUploaderImplCopyWith<$Res> {
  __$$MangaSearchUploaderImplCopyWithImpl(_$MangaSearchUploaderImpl _value,
      $Res Function(_$MangaSearchUploaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaSearchUploader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$MangaSearchUploaderImpl(
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
class _$MangaSearchUploaderImpl implements _MangaSearchUploader {
  const _$MangaSearchUploaderImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.avatarUrl});

  factory _$MangaSearchUploaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaSearchUploaderImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'MangaSearchUploader(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaSearchUploaderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  /// Create a copy of MangaSearchUploader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaSearchUploaderImplCopyWith<_$MangaSearchUploaderImpl> get copyWith =>
      __$$MangaSearchUploaderImplCopyWithImpl<_$MangaSearchUploaderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaSearchUploaderImplToJson(
      this,
    );
  }
}

abstract class _MangaSearchUploader implements MangaSearchUploader {
  const factory _MangaSearchUploader(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final String? avatarUrl}) = _$MangaSearchUploaderImpl;

  factory _MangaSearchUploader.fromJson(Map<String, dynamic> json) =
      _$MangaSearchUploaderImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get avatarUrl;

  /// Create a copy of MangaSearchUploader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaSearchUploaderImplCopyWith<_$MangaSearchUploaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
