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
  int get view => throw _privateConstructorUsedError;
  List<Chapter> get chapters => throw _privateConstructorUsedError;
  List<Genre> get genre => throw _privateConstructorUsedError;
  Uploader get uploader => throw _privateConstructorUsedError;
  String? get coverImg => throw _privateConstructorUsedError;
  String? get bannerImg => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  int get like => throw _privateConstructorUsedError;
  int get dislike => throw _privateConstructorUsedError;
  String get approvalStatus => throw _privateConstructorUsedError;

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
      int view,
      List<Chapter> chapters,
      List<Genre> genre,
      Uploader uploader,
      String? coverImg,
      String? bannerImg,
      String status,
      int ratingCount,
      int followers,
      int like,
      int dislike,
      String approvalStatus});

  $UploaderCopyWith<$Res> get uploader;
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
    Object? view = null,
    Object? chapters = null,
    Object? genre = null,
    Object? uploader = null,
    Object? coverImg = freezed,
    Object? bannerImg = freezed,
    Object? status = null,
    Object? ratingCount = null,
    Object? followers = null,
    Object? like = null,
    Object? dislike = null,
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
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as Uploader,
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImg: freezed == bannerImg
          ? _value.bannerImg
          : bannerImg // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      dislike: null == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int,
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploaderCopyWith<$Res> get uploader {
    return $UploaderCopyWith<$Res>(_value.uploader, (value) {
      return _then(_value.copyWith(uploader: value) as $Val);
    });
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
      int view,
      List<Chapter> chapters,
      List<Genre> genre,
      Uploader uploader,
      String? coverImg,
      String? bannerImg,
      String status,
      int ratingCount,
      int followers,
      int like,
      int dislike,
      String approvalStatus});

  @override
  $UploaderCopyWith<$Res> get uploader;
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
    Object? view = null,
    Object? chapters = null,
    Object? genre = null,
    Object? uploader = null,
    Object? coverImg = freezed,
    Object? bannerImg = freezed,
    Object? status = null,
    Object? ratingCount = null,
    Object? followers = null,
    Object? like = null,
    Object? dislike = null,
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
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      genre: null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as Uploader,
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImg: freezed == bannerImg
          ? _value.bannerImg
          : bannerImg // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      dislike: null == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int,
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.view = 0,
      final List<Chapter> chapters = const [],
      final List<Genre> genre = const [],
      required this.uploader,
      this.coverImg,
      this.bannerImg,
      this.status = 'In Progress',
      this.ratingCount = 0,
      this.followers = 0,
      this.like = 0,
      this.dislike = 0,
      this.approvalStatus = 'PENDING'})
      : _chapters = chapters,
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
  final int view;
  final List<Chapter> _chapters;
  @override
  @JsonKey()
  List<Chapter> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  final List<Genre> _genre;
  @override
  @JsonKey()
  List<Genre> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  @override
  final Uploader uploader;
  @override
  final String? coverImg;
  @override
  final String? bannerImg;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final int ratingCount;
  @override
  @JsonKey()
  final int followers;
  @override
  @JsonKey()
  final int like;
  @override
  @JsonKey()
  final int dislike;
  @override
  @JsonKey()
  final String approvalStatus;

  @override
  String toString() {
    return 'Manga(id: $id, title: $title, description: $description, author: $author, rating: $rating, view: $view, chapters: $chapters, genre: $genre, uploader: $uploader, coverImg: $coverImg, bannerImg: $bannerImg, status: $status, ratingCount: $ratingCount, followers: $followers, like: $like, dislike: $dislike, approvalStatus: $approvalStatus)';
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
            (identical(other.view, view) || other.view == view) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg) &&
            (identical(other.bannerImg, bannerImg) ||
                other.bannerImg == bannerImg) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.dislike, dislike) || other.dislike == dislike) &&
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
      view,
      const DeepCollectionEquality().hash(_chapters),
      const DeepCollectionEquality().hash(_genre),
      uploader,
      coverImg,
      bannerImg,
      status,
      ratingCount,
      followers,
      like,
      dislike,
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
      final int view,
      final List<Chapter> chapters,
      final List<Genre> genre,
      required final Uploader uploader,
      final String? coverImg,
      final String? bannerImg,
      final String status,
      final int ratingCount,
      final int followers,
      final int like,
      final int dislike,
      final String approvalStatus}) = _$MangaImpl;

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
  int get view;
  @override
  List<Chapter> get chapters;
  @override
  List<Genre> get genre;
  @override
  Uploader get uploader;
  @override
  String? get coverImg;
  @override
  String? get bannerImg;
  @override
  String get status;
  @override
  int get ratingCount;
  @override
  int get followers;
  @override
  int get like;
  @override
  int get dislike;
  @override
  String get approvalStatus;

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
