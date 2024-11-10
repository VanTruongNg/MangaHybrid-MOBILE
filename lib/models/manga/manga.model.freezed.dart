// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Manga _$MangaFromJson(Map<String, dynamic> json) {
  return _Manga.fromJson(json);
}

/// @nodoc
mixin _$Manga {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get like => throw _privateConstructorUsedError;
  int get disLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'view')
  int get views => throw _privateConstructorUsedError;
  List<String> get followers => throw _privateConstructorUsedError;
  List<String> get chapters => throw _privateConstructorUsedError;
  List<String> get genre => throw _privateConstructorUsedError;
  String get uploader => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get version => throw _privateConstructorUsedError;
  String? get coverImg => throw _privateConstructorUsedError;
  StatusEnum get status => throw _privateConstructorUsedError;
  ApprovalStatus get approvalStatus => throw _privateConstructorUsedError;

  /// Serializes this Manga to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaCopyWith<Manga> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaCopyWith<$Res> {
  factory $MangaCopyWith(Manga value, $Res Function(Manga) then) =
      _$MangaCopyWithImpl<$Res, Manga>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String author,
      double rating,
      int like,
      int disLike,
      @JsonKey(name: 'view') int views,
      List<String> followers,
      List<String> chapters,
      List<String> genre,
      String uploader,
      String createdAt,
      String updatedAt,
      @JsonKey(name: '__v') int? version,
      String? coverImg,
      StatusEnum status,
      ApprovalStatus approvalStatus});
}

/// @nodoc
class _$MangaCopyWithImpl<$Res, $Val extends Manga>
    implements $MangaCopyWith<$Res> {
  _$MangaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? rating = null,
    Object? like = null,
    Object? disLike = null,
    Object? views = null,
    Object? followers = null,
    Object? chapters = null,
    Object? genre = null,
    Object? uploader = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = freezed,
    Object? coverImg = freezed,
    Object? status = null,
    Object? approvalStatus = null,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      disLike: null == disLike
          ? _value.disLike
          : disLike // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEnum,
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaImplCopyWith<$Res> implements $MangaCopyWith<$Res> {
  factory _$$MangaImplCopyWith(
          _$MangaImpl value, $Res Function(_$MangaImpl) then) =
      __$$MangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String author,
      double rating,
      int like,
      int disLike,
      @JsonKey(name: 'view') int views,
      List<String> followers,
      List<String> chapters,
      List<String> genre,
      String uploader,
      String createdAt,
      String updatedAt,
      @JsonKey(name: '__v') int? version,
      String? coverImg,
      StatusEnum status,
      ApprovalStatus approvalStatus});
}

/// @nodoc
class __$$MangaImplCopyWithImpl<$Res>
    extends _$MangaCopyWithImpl<$Res, _$MangaImpl>
    implements _$$MangaImplCopyWith<$Res> {
  __$$MangaImplCopyWithImpl(
      _$MangaImpl _value, $Res Function(_$MangaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? rating = null,
    Object? like = null,
    Object? disLike = null,
    Object? views = null,
    Object? followers = null,
    Object? chapters = null,
    Object? genre = null,
    Object? uploader = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = freezed,
    Object? coverImg = freezed,
    Object? status = null,
    Object? approvalStatus = null,
  }) {
    return _then(_$MangaImpl(
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      disLike: null == disLike
          ? _value.disLike
          : disLike // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      genre: null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEnum,
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaImpl implements _Manga {
  const _$MangaImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.description,
      required this.author,
      this.rating = 0,
      this.like = 0,
      this.disLike = 0,
      @JsonKey(name: 'view') this.views = 0,
      final List<String> followers = const [],
      final List<String> chapters = const [],
      final List<String> genre = const [],
      required this.uploader,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: '__v') this.version,
      this.coverImg,
      this.status = StatusEnum.inProgress,
      this.approvalStatus = ApprovalStatus.pending})
      : _followers = followers,
        _chapters = chapters,
        _genre = genre;

  factory _$MangaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaImplFromJson(json);

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
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int like;
  @override
  @JsonKey()
  final int disLike;
  @override
  @JsonKey(name: 'view')
  final int views;
  final List<String> _followers;
  @override
  @JsonKey()
  List<String> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<String> _chapters;
  @override
  @JsonKey()
  List<String> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  final List<String> _genre;
  @override
  @JsonKey()
  List<String> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  @override
  final String uploader;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? version;
  @override
  final String? coverImg;
  @override
  @JsonKey()
  final StatusEnum status;
  @override
  @JsonKey()
  final ApprovalStatus approvalStatus;

  @override
  String toString() {
    return 'Manga(id: $id, title: $title, description: $description, author: $author, rating: $rating, like: $like, disLike: $disLike, views: $views, followers: $followers, chapters: $chapters, genre: $genre, uploader: $uploader, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, coverImg: $coverImg, status: $status, approvalStatus: $approvalStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.disLike, disLike) || other.disLike == disLike) &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      author,
      rating,
      like,
      disLike,
      views,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_chapters),
      const DeepCollectionEquality().hash(_genre),
      uploader,
      createdAt,
      updatedAt,
      version,
      coverImg,
      status,
      approvalStatus);

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      __$$MangaImplCopyWithImpl<_$MangaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaImplToJson(
      this,
    );
  }
}

abstract class _Manga implements Manga {
  const factory _Manga(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String description,
      required final String author,
      final double rating,
      final int like,
      final int disLike,
      @JsonKey(name: 'view') final int views,
      final List<String> followers,
      final List<String> chapters,
      final List<String> genre,
      required final String uploader,
      required final String createdAt,
      required final String updatedAt,
      @JsonKey(name: '__v') final int? version,
      final String? coverImg,
      final StatusEnum status,
      final ApprovalStatus approvalStatus}) = _$MangaImpl;

  factory _Manga.fromJson(Map<String, dynamic> json) = _$MangaImpl.fromJson;

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
  double get rating;
  @override
  int get like;
  @override
  int get disLike;
  @override
  @JsonKey(name: 'view')
  int get views;
  @override
  List<String> get followers;
  @override
  List<String> get chapters;
  @override
  List<String> get genre;
  @override
  String get uploader;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get version;
  @override
  String? get coverImg;
  @override
  StatusEnum get status;
  @override
  ApprovalStatus get approvalStatus;

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
