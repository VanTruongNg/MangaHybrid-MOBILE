// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_manga.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfflineManga _$OfflineMangaFromJson(Map<String, dynamic> json) {
  return _OfflineManga.fromJson(json);
}

/// @nodoc
mixin _$OfflineManga {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get downloadedAt => throw _privateConstructorUsedError;
  String? get coverPath => throw _privateConstructorUsedError;
  String? get bannerPath => throw _privateConstructorUsedError;

  /// Serializes this OfflineManga to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfflineManga
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfflineMangaCopyWith<OfflineManga> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineMangaCopyWith<$Res> {
  factory $OfflineMangaCopyWith(
          OfflineManga value, $Res Function(OfflineManga) then) =
      _$OfflineMangaCopyWithImpl<$Res, OfflineManga>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String author,
      String status,
      List<String> genres,
      String downloadedAt,
      String? coverPath,
      String? bannerPath});
}

/// @nodoc
class _$OfflineMangaCopyWithImpl<$Res, $Val extends OfflineManga>
    implements $OfflineMangaCopyWith<$Res> {
  _$OfflineMangaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfflineManga
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? status = null,
    Object? genres = null,
    Object? downloadedAt = null,
    Object? coverPath = freezed,
    Object? bannerPath = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      downloadedAt: null == downloadedAt
          ? _value.downloadedAt
          : downloadedAt // ignore: cast_nullable_to_non_nullable
              as String,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerPath: freezed == bannerPath
          ? _value.bannerPath
          : bannerPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfflineMangaImplCopyWith<$Res>
    implements $OfflineMangaCopyWith<$Res> {
  factory _$$OfflineMangaImplCopyWith(
          _$OfflineMangaImpl value, $Res Function(_$OfflineMangaImpl) then) =
      __$$OfflineMangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String author,
      String status,
      List<String> genres,
      String downloadedAt,
      String? coverPath,
      String? bannerPath});
}

/// @nodoc
class __$$OfflineMangaImplCopyWithImpl<$Res>
    extends _$OfflineMangaCopyWithImpl<$Res, _$OfflineMangaImpl>
    implements _$$OfflineMangaImplCopyWith<$Res> {
  __$$OfflineMangaImplCopyWithImpl(
      _$OfflineMangaImpl _value, $Res Function(_$OfflineMangaImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfflineManga
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? status = null,
    Object? genres = null,
    Object? downloadedAt = null,
    Object? coverPath = freezed,
    Object? bannerPath = freezed,
  }) {
    return _then(_$OfflineMangaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      downloadedAt: null == downloadedAt
          ? _value.downloadedAt
          : downloadedAt // ignore: cast_nullable_to_non_nullable
              as String,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerPath: freezed == bannerPath
          ? _value.bannerPath
          : bannerPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfflineMangaImpl implements _OfflineManga {
  const _$OfflineMangaImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.description,
      required this.author,
      required this.status,
      required final List<String> genres,
      required this.downloadedAt,
      this.coverPath,
      this.bannerPath})
      : _genres = genres;

  factory _$OfflineMangaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineMangaImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String author;
  @override
  final String status;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String downloadedAt;
  @override
  final String? coverPath;
  @override
  final String? bannerPath;

  @override
  String toString() {
    return 'OfflineManga(id: $id, title: $title, description: $description, author: $author, status: $status, genres: $genres, downloadedAt: $downloadedAt, coverPath: $coverPath, bannerPath: $bannerPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineMangaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.downloadedAt, downloadedAt) ||
                other.downloadedAt == downloadedAt) &&
            (identical(other.coverPath, coverPath) ||
                other.coverPath == coverPath) &&
            (identical(other.bannerPath, bannerPath) ||
                other.bannerPath == bannerPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      author,
      status,
      const DeepCollectionEquality().hash(_genres),
      downloadedAt,
      coverPath,
      bannerPath);

  /// Create a copy of OfflineManga
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineMangaImplCopyWith<_$OfflineMangaImpl> get copyWith =>
      __$$OfflineMangaImplCopyWithImpl<_$OfflineMangaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineMangaImplToJson(
      this,
    );
  }
}

abstract class _OfflineManga implements OfflineManga {
  const factory _OfflineManga(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String description,
      required final String author,
      required final String status,
      required final List<String> genres,
      required final String downloadedAt,
      final String? coverPath,
      final String? bannerPath}) = _$OfflineMangaImpl;

  factory _OfflineManga.fromJson(Map<String, dynamic> json) =
      _$OfflineMangaImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get author;
  @override
  String get status;
  @override
  List<String> get genres;
  @override
  String get downloadedAt;
  @override
  String? get coverPath;
  @override
  String? get bannerPath;

  /// Create a copy of OfflineManga
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfflineMangaImplCopyWith<_$OfflineMangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
