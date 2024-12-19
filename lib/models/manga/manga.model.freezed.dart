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

MangaDetail _$MangaDetailFromJson(Map<String, dynamic> json) {
  return _MangaDetail.fromJson(json);
}

/// @nodoc
mixin _$MangaDetail {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get coverImg => throw _privateConstructorUsedError;
  String? get bannerImg => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get approvalStatus => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get like => throw _privateConstructorUsedError;
  int get disLike => throw _privateConstructorUsedError;
  int get view => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  double get totalRating => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  UploaderInfo get uploader => throw _privateConstructorUsedError;
  List<ChapterInfo> get chapters => throw _privateConstructorUsedError;
  List<GenreInfo> get genre => throw _privateConstructorUsedError;
  List<CommentInfo> get comments => throw _privateConstructorUsedError;

  /// Serializes this MangaDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaDetailCopyWith<MangaDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDetailCopyWith<$Res> {
  factory $MangaDetailCopyWith(
          MangaDetail value, $Res Function(MangaDetail) then) =
      _$MangaDetailCopyWithImpl<$Res, MangaDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String? description,
      String? author,
      String? coverImg,
      String? bannerImg,
      String status,
      String approvalStatus,
      double rating,
      int like,
      int disLike,
      int view,
      int followers,
      double totalRating,
      int ratingCount,
      double averageRating,
      DateTime createdAt,
      DateTime updatedAt,
      UploaderInfo uploader,
      List<ChapterInfo> chapters,
      List<GenreInfo> genre,
      List<CommentInfo> comments});

  $UploaderInfoCopyWith<$Res> get uploader;
}

/// @nodoc
class _$MangaDetailCopyWithImpl<$Res, $Val extends MangaDetail>
    implements $MangaDetailCopyWith<$Res> {
  _$MangaDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? author = freezed,
    Object? coverImg = freezed,
    Object? bannerImg = freezed,
    Object? status = null,
    Object? approvalStatus = null,
    Object? rating = null,
    Object? like = null,
    Object? disLike = null,
    Object? view = null,
    Object? followers = null,
    Object? totalRating = null,
    Object? ratingCount = null,
    Object? averageRating = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? uploader = null,
    Object? chapters = null,
    Object? genre = null,
    Object? comments = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
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
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
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
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as UploaderInfo,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterInfo>,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<GenreInfo>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentInfo>,
    ) as $Val);
  }

  /// Create a copy of MangaDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploaderInfoCopyWith<$Res> get uploader {
    return $UploaderInfoCopyWith<$Res>(_value.uploader, (value) {
      return _then(_value.copyWith(uploader: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaDetailImplCopyWith<$Res>
    implements $MangaDetailCopyWith<$Res> {
  factory _$$MangaDetailImplCopyWith(
          _$MangaDetailImpl value, $Res Function(_$MangaDetailImpl) then) =
      __$$MangaDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String? description,
      String? author,
      String? coverImg,
      String? bannerImg,
      String status,
      String approvalStatus,
      double rating,
      int like,
      int disLike,
      int view,
      int followers,
      double totalRating,
      int ratingCount,
      double averageRating,
      DateTime createdAt,
      DateTime updatedAt,
      UploaderInfo uploader,
      List<ChapterInfo> chapters,
      List<GenreInfo> genre,
      List<CommentInfo> comments});

  @override
  $UploaderInfoCopyWith<$Res> get uploader;
}

/// @nodoc
class __$$MangaDetailImplCopyWithImpl<$Res>
    extends _$MangaDetailCopyWithImpl<$Res, _$MangaDetailImpl>
    implements _$$MangaDetailImplCopyWith<$Res> {
  __$$MangaDetailImplCopyWithImpl(
      _$MangaDetailImpl _value, $Res Function(_$MangaDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? author = freezed,
    Object? coverImg = freezed,
    Object? bannerImg = freezed,
    Object? status = null,
    Object? approvalStatus = null,
    Object? rating = null,
    Object? like = null,
    Object? disLike = null,
    Object? view = null,
    Object? followers = null,
    Object? totalRating = null,
    Object? ratingCount = null,
    Object? averageRating = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? uploader = null,
    Object? chapters = null,
    Object? genre = null,
    Object? comments = null,
  }) {
    return _then(_$MangaDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
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
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
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
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploader: null == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as UploaderInfo,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterInfo>,
      genre: null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<GenreInfo>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaDetailImpl implements _MangaDetail {
  const _$MangaDetailImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      this.description,
      this.author,
      this.coverImg,
      this.bannerImg,
      required this.status,
      required this.approvalStatus,
      this.rating = 0,
      this.like = 0,
      this.disLike = 0,
      this.view = 0,
      this.followers = 0,
      this.totalRating = 0,
      this.ratingCount = 0,
      this.averageRating = 0,
      required this.createdAt,
      required this.updatedAt,
      required this.uploader,
      final List<ChapterInfo> chapters = const [],
      final List<GenreInfo> genre = const [],
      final List<CommentInfo> comments = const []})
      : _chapters = chapters,
        _genre = genre,
        _comments = comments;

  factory _$MangaDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaDetailImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final String? coverImg;
  @override
  final String? bannerImg;
  @override
  final String status;
  @override
  final String approvalStatus;
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
  @JsonKey()
  final int view;
  @override
  @JsonKey()
  final int followers;
  @override
  @JsonKey()
  final double totalRating;
  @override
  @JsonKey()
  final int ratingCount;
  @override
  @JsonKey()
  final double averageRating;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final UploaderInfo uploader;
  final List<ChapterInfo> _chapters;
  @override
  @JsonKey()
  List<ChapterInfo> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  final List<GenreInfo> _genre;
  @override
  @JsonKey()
  List<GenreInfo> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  final List<CommentInfo> _comments;
  @override
  @JsonKey()
  List<CommentInfo> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'MangaDetail(id: $id, title: $title, description: $description, author: $author, coverImg: $coverImg, bannerImg: $bannerImg, status: $status, approvalStatus: $approvalStatus, rating: $rating, like: $like, disLike: $disLike, view: $view, followers: $followers, totalRating: $totalRating, ratingCount: $ratingCount, averageRating: $averageRating, createdAt: $createdAt, updatedAt: $updatedAt, uploader: $uploader, chapters: $chapters, genre: $genre, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg) &&
            (identical(other.bannerImg, bannerImg) ||
                other.bannerImg == bannerImg) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.disLike, disLike) || other.disLike == disLike) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.totalRating, totalRating) ||
                other.totalRating == totalRating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        author,
        coverImg,
        bannerImg,
        status,
        approvalStatus,
        rating,
        like,
        disLike,
        view,
        followers,
        totalRating,
        ratingCount,
        averageRating,
        createdAt,
        updatedAt,
        uploader,
        const DeepCollectionEquality().hash(_chapters),
        const DeepCollectionEquality().hash(_genre),
        const DeepCollectionEquality().hash(_comments)
      ]);

  /// Create a copy of MangaDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaDetailImplCopyWith<_$MangaDetailImpl> get copyWith =>
      __$$MangaDetailImplCopyWithImpl<_$MangaDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaDetailImplToJson(
      this,
    );
  }
}

abstract class _MangaDetail implements MangaDetail {
  const factory _MangaDetail(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      final String? description,
      final String? author,
      final String? coverImg,
      final String? bannerImg,
      required final String status,
      required final String approvalStatus,
      final double rating,
      final int like,
      final int disLike,
      final int view,
      final int followers,
      final double totalRating,
      final int ratingCount,
      final double averageRating,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final UploaderInfo uploader,
      final List<ChapterInfo> chapters,
      final List<GenreInfo> genre,
      final List<CommentInfo> comments}) = _$MangaDetailImpl;

  factory _MangaDetail.fromJson(Map<String, dynamic> json) =
      _$MangaDetailImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get author;
  @override
  String? get coverImg;
  @override
  String? get bannerImg;
  @override
  String get status;
  @override
  String get approvalStatus;
  @override
  double get rating;
  @override
  int get like;
  @override
  int get disLike;
  @override
  int get view;
  @override
  int get followers;
  @override
  double get totalRating;
  @override
  int get ratingCount;
  @override
  double get averageRating;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  UploaderInfo get uploader;
  @override
  List<ChapterInfo> get chapters;
  @override
  List<GenreInfo> get genre;
  @override
  List<CommentInfo> get comments;

  /// Create a copy of MangaDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaDetailImplCopyWith<_$MangaDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploaderInfo _$UploaderInfoFromJson(Map<String, dynamic> json) {
  return _UploaderInfo.fromJson(json);
}

/// @nodoc
mixin _$UploaderInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this UploaderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploaderInfoCopyWith<UploaderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploaderInfoCopyWith<$Res> {
  factory $UploaderInfoCopyWith(
          UploaderInfo value, $Res Function(UploaderInfo) then) =
      _$UploaderInfoCopyWithImpl<$Res, UploaderInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? name,
      String? email,
      String? avatarUrl});
}

/// @nodoc
class _$UploaderInfoCopyWithImpl<$Res, $Val extends UploaderInfo>
    implements $UploaderInfoCopyWith<$Res> {
  _$UploaderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploaderInfoImplCopyWith<$Res>
    implements $UploaderInfoCopyWith<$Res> {
  factory _$$UploaderInfoImplCopyWith(
          _$UploaderInfoImpl value, $Res Function(_$UploaderInfoImpl) then) =
      __$$UploaderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? name,
      String? email,
      String? avatarUrl});
}

/// @nodoc
class __$$UploaderInfoImplCopyWithImpl<$Res>
    extends _$UploaderInfoCopyWithImpl<$Res, _$UploaderInfoImpl>
    implements _$$UploaderInfoImplCopyWith<$Res> {
  __$$UploaderInfoImplCopyWithImpl(
      _$UploaderInfoImpl _value, $Res Function(_$UploaderInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$UploaderInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploaderInfoImpl implements _UploaderInfo {
  const _$UploaderInfoImpl(
      {@JsonKey(name: '_id') required this.id,
      this.name,
      this.email,
      this.avatarUrl});

  factory _$UploaderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploaderInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'UploaderInfo(id: $id, name: $name, email: $email, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, avatarUrl);

  /// Create a copy of UploaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploaderInfoImplCopyWith<_$UploaderInfoImpl> get copyWith =>
      __$$UploaderInfoImplCopyWithImpl<_$UploaderInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploaderInfoImplToJson(
      this,
    );
  }
}

abstract class _UploaderInfo implements UploaderInfo {
  const factory _UploaderInfo(
      {@JsonKey(name: '_id') required final String id,
      final String? name,
      final String? email,
      final String? avatarUrl}) = _$UploaderInfoImpl;

  factory _UploaderInfo.fromJson(Map<String, dynamic> json) =
      _$UploaderInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get avatarUrl;

  /// Create a copy of UploaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploaderInfoImplCopyWith<_$UploaderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterInfo _$ChapterInfoFromJson(Map<String, dynamic> json) {
  return _ChapterInfo.fromJson(json);
}

/// @nodoc
mixin _$ChapterInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get chapterTitle => throw _privateConstructorUsedError;
  String? get chapterName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
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
      String? chapterTitle,
      String? chapterName,
      DateTime createdAt,
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
    Object? chapterTitle = freezed,
    Object? chapterName = freezed,
    Object? createdAt = null,
    Object? views = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterName: freezed == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      String? chapterTitle,
      String? chapterName,
      DateTime createdAt,
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
    Object? chapterTitle = freezed,
    Object? chapterName = freezed,
    Object? createdAt = null,
    Object? views = null,
  }) {
    return _then(_$ChapterInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterName: freezed == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      this.chapterTitle,
      this.chapterName,
      required this.createdAt,
      this.views = 0});

  factory _$ChapterInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? chapterTitle;
  @override
  final String? chapterName;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final int views;

  @override
  String toString() {
    return 'ChapterInfo(id: $id, chapterTitle: $chapterTitle, chapterName: $chapterName, createdAt: $createdAt, views: $views)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapterTitle, chapterTitle) ||
                other.chapterTitle == chapterTitle) &&
            (identical(other.chapterName, chapterName) ||
                other.chapterName == chapterName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.views, views) || other.views == views));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, chapterTitle, chapterName, createdAt, views);

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
      final String? chapterTitle,
      final String? chapterName,
      required final DateTime createdAt,
      final int views}) = _$ChapterInfoImpl;

  factory _ChapterInfo.fromJson(Map<String, dynamic> json) =
      _$ChapterInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get chapterTitle;
  @override
  String? get chapterName;
  @override
  DateTime get createdAt;
  @override
  int get views;

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterInfoImplCopyWith<_$ChapterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreInfo _$GenreInfoFromJson(Map<String, dynamic> json) {
  return _GenreInfo.fromJson(json);
}

/// @nodoc
mixin _$GenreInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreInfoCopyWith<GenreInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreInfoCopyWith<$Res> {
  factory $GenreInfoCopyWith(GenreInfo value, $Res Function(GenreInfo) then) =
      _$GenreInfoCopyWithImpl<$Res, GenreInfo>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class _$GenreInfoCopyWithImpl<$Res, $Val extends GenreInfo>
    implements $GenreInfoCopyWith<$Res> {
  _$GenreInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreInfoImplCopyWith<$Res>
    implements $GenreInfoCopyWith<$Res> {
  factory _$$GenreInfoImplCopyWith(
          _$GenreInfoImpl value, $Res Function(_$GenreInfoImpl) then) =
      __$$GenreInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class __$$GenreInfoImplCopyWithImpl<$Res>
    extends _$GenreInfoCopyWithImpl<$Res, _$GenreInfoImpl>
    implements _$$GenreInfoImplCopyWith<$Res> {
  __$$GenreInfoImplCopyWithImpl(
      _$GenreInfoImpl _value, $Res Function(_$GenreInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenreInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreInfoImpl implements _GenreInfo {
  const _$GenreInfoImpl(
      {@JsonKey(name: '_id') required this.id, required this.name});

  factory _$GenreInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreInfo(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreInfoImplCopyWith<_$GenreInfoImpl> get copyWith =>
      __$$GenreInfoImplCopyWithImpl<_$GenreInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreInfoImplToJson(
      this,
    );
  }
}

abstract class _GenreInfo implements GenreInfo {
  const factory _GenreInfo(
      {@JsonKey(name: '_id') required final String id,
      required final String name}) = _$GenreInfoImpl;

  factory _GenreInfo.fromJson(Map<String, dynamic> json) =
      _$GenreInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;

  /// Create a copy of GenreInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreInfoImplCopyWith<_$GenreInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentInfo _$CommentInfoFromJson(Map<String, dynamic> json) {
  return _CommentInfo.fromJson(json);
}

/// @nodoc
mixin _$CommentInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  UploaderInfo get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<ReplyInfo> get replies => throw _privateConstructorUsedError;

  /// Serializes this CommentInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentInfoCopyWith<CommentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentInfoCopyWith<$Res> {
  factory $CommentInfoCopyWith(
          CommentInfo value, $Res Function(CommentInfo) then) =
      _$CommentInfoCopyWithImpl<$Res, CommentInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      UploaderInfo user,
      DateTime createdAt,
      List<ReplyInfo> replies});

  $UploaderInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$CommentInfoCopyWithImpl<$Res, $Val extends CommentInfo>
    implements $CommentInfoCopyWith<$Res> {
  _$CommentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? user = null,
    Object? createdAt = null,
    Object? replies = null,
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
    ) as $Val);
  }

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploaderInfoCopyWith<$Res> get user {
    return $UploaderInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentInfoImplCopyWith<$Res>
    implements $CommentInfoCopyWith<$Res> {
  factory _$$CommentInfoImplCopyWith(
          _$CommentInfoImpl value, $Res Function(_$CommentInfoImpl) then) =
      __$$CommentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      UploaderInfo user,
      DateTime createdAt,
      List<ReplyInfo> replies});

  @override
  $UploaderInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$CommentInfoImplCopyWithImpl<$Res>
    extends _$CommentInfoCopyWithImpl<$Res, _$CommentInfoImpl>
    implements _$$CommentInfoImplCopyWith<$Res> {
  __$$CommentInfoImplCopyWithImpl(
      _$CommentInfoImpl _value, $Res Function(_$CommentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? user = null,
    Object? createdAt = null,
    Object? replies = null,
  }) {
    return _then(_$CommentInfoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentInfoImpl implements _CommentInfo {
  const _$CommentInfoImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.content,
      required this.user,
      required this.createdAt,
      final List<ReplyInfo> replies = const []})
      : _replies = replies;

  factory _$CommentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentInfoImplFromJson(json);

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
  String toString() {
    return 'CommentInfo(id: $id, content: $content, user: $user, createdAt: $createdAt, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, user, createdAt,
      const DeepCollectionEquality().hash(_replies));

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentInfoImplCopyWith<_$CommentInfoImpl> get copyWith =>
      __$$CommentInfoImplCopyWithImpl<_$CommentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentInfoImplToJson(
      this,
    );
  }
}

abstract class _CommentInfo implements CommentInfo {
  const factory _CommentInfo(
      {@JsonKey(name: '_id') required final String id,
      required final String content,
      required final UploaderInfo user,
      required final DateTime createdAt,
      final List<ReplyInfo> replies}) = _$CommentInfoImpl;

  factory _CommentInfo.fromJson(Map<String, dynamic> json) =
      _$CommentInfoImpl.fromJson;

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

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentInfoImplCopyWith<_$CommentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplyInfo _$ReplyInfoFromJson(Map<String, dynamic> json) {
  return _ReplyInfo.fromJson(json);
}

/// @nodoc
mixin _$ReplyInfo {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ReplyInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyInfoCopyWith<ReplyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyInfoCopyWith<$Res> {
  factory $ReplyInfoCopyWith(ReplyInfo value, $Res Function(ReplyInfo) then) =
      _$ReplyInfoCopyWithImpl<$Res, ReplyInfo>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id});
}

/// @nodoc
class _$ReplyInfoCopyWithImpl<$Res, $Val extends ReplyInfo>
    implements $ReplyInfoCopyWith<$Res> {
  _$ReplyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyInfoImplCopyWith<$Res>
    implements $ReplyInfoCopyWith<$Res> {
  factory _$$ReplyInfoImplCopyWith(
          _$ReplyInfoImpl value, $Res Function(_$ReplyInfoImpl) then) =
      __$$ReplyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$ReplyInfoImplCopyWithImpl<$Res>
    extends _$ReplyInfoCopyWithImpl<$Res, _$ReplyInfoImpl>
    implements _$$ReplyInfoImplCopyWith<$Res> {
  __$$ReplyInfoImplCopyWithImpl(
      _$ReplyInfoImpl _value, $Res Function(_$ReplyInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ReplyInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyInfoImpl implements _ReplyInfo {
  const _$ReplyInfoImpl({@JsonKey(name: '_id') required this.id});

  factory _$ReplyInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'ReplyInfo(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyInfoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyInfoImplCopyWith<_$ReplyInfoImpl> get copyWith =>
      __$$ReplyInfoImplCopyWithImpl<_$ReplyInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyInfoImplToJson(
      this,
    );
  }
}

abstract class _ReplyInfo implements ReplyInfo {
  const factory _ReplyInfo({@JsonKey(name: '_id') required final String id}) =
      _$ReplyInfoImpl;

  factory _ReplyInfo.fromJson(Map<String, dynamic> json) =
      _$ReplyInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of ReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyInfoImplCopyWith<_$ReplyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
