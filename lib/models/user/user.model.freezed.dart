// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  List<UserBasicModel> get followers => throw _privateConstructorUsedError;
  List<UserBasicModel> get following => throw _privateConstructorUsedError;
  List<MangaBasicModel> get uploadedManga => throw _privateConstructorUsedError;
  List<MangaBasicModel> get favoritesManga =>
      throw _privateConstructorUsedError;
  List<MangaBasicModel> get dislikedManga => throw _privateConstructorUsedError;
  List<MangaBasicModel> get followingManga =>
      throw _privateConstructorUsedError;
  List<ReadingHistoryModel> get readingHistory =>
      throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  List<RatingModel> get ratings => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String email,
      bool isVerified,
      String? avatarUrl,
      List<UserBasicModel> followers,
      List<UserBasicModel> following,
      List<MangaBasicModel> uploadedManga,
      List<MangaBasicModel> favoritesManga,
      List<MangaBasicModel> dislikedManga,
      List<MangaBasicModel> followingManga,
      List<ReadingHistoryModel> readingHistory,
      List<CommentModel> comments,
      List<RatingModel> ratings,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isVerified = null,
    Object? avatarUrl = freezed,
    Object? followers = null,
    Object? following = null,
    Object? uploadedManga = null,
    Object? favoritesManga = null,
    Object? dislikedManga = null,
    Object? followingManga = null,
    Object? readingHistory = null,
    Object? comments = null,
    Object? ratings = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserBasicModel>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserBasicModel>,
      uploadedManga: null == uploadedManga
          ? _value.uploadedManga
          : uploadedManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      favoritesManga: null == favoritesManga
          ? _value.favoritesManga
          : favoritesManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      dislikedManga: null == dislikedManga
          ? _value.dislikedManga
          : dislikedManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      followingManga: null == followingManga
          ? _value.followingManga
          : followingManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      readingHistory: null == readingHistory
          ? _value.readingHistory
          : readingHistory // ignore: cast_nullable_to_non_nullable
              as List<ReadingHistoryModel>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String email,
      bool isVerified,
      String? avatarUrl,
      List<UserBasicModel> followers,
      List<UserBasicModel> following,
      List<MangaBasicModel> uploadedManga,
      List<MangaBasicModel> favoritesManga,
      List<MangaBasicModel> dislikedManga,
      List<MangaBasicModel> followingManga,
      List<ReadingHistoryModel> readingHistory,
      List<CommentModel> comments,
      List<RatingModel> ratings,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isVerified = null,
    Object? avatarUrl = freezed,
    Object? followers = null,
    Object? following = null,
    Object? uploadedManga = null,
    Object? favoritesManga = null,
    Object? dislikedManga = null,
    Object? followingManga = null,
    Object? readingHistory = null,
    Object? comments = null,
    Object? ratings = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserBasicModel>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserBasicModel>,
      uploadedManga: null == uploadedManga
          ? _value._uploadedManga
          : uploadedManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      favoritesManga: null == favoritesManga
          ? _value._favoritesManga
          : favoritesManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      dislikedManga: null == dislikedManga
          ? _value._dislikedManga
          : dislikedManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      followingManga: null == followingManga
          ? _value._followingManga
          : followingManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasicModel>,
      readingHistory: null == readingHistory
          ? _value._readingHistory
          : readingHistory // ignore: cast_nullable_to_non_nullable
              as List<ReadingHistoryModel>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      ratings: null == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.email,
      this.isVerified = false,
      this.avatarUrl,
      final List<UserBasicModel> followers = const [],
      final List<UserBasicModel> following = const [],
      final List<MangaBasicModel> uploadedManga = const [],
      final List<MangaBasicModel> favoritesManga = const [],
      final List<MangaBasicModel> dislikedManga = const [],
      final List<MangaBasicModel> followingManga = const [],
      final List<ReadingHistoryModel> readingHistory = const [],
      final List<CommentModel> comments = const [],
      final List<RatingModel> ratings = const [],
      required this.createdAt,
      required this.updatedAt})
      : _followers = followers,
        _following = following,
        _uploadedManga = uploadedManga,
        _favoritesManga = favoritesManga,
        _dislikedManga = dislikedManga,
        _followingManga = followingManga,
        _readingHistory = readingHistory,
        _comments = comments,
        _ratings = ratings;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  final String? avatarUrl;
  final List<UserBasicModel> _followers;
  @override
  @JsonKey()
  List<UserBasicModel> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<UserBasicModel> _following;
  @override
  @JsonKey()
  List<UserBasicModel> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<MangaBasicModel> _uploadedManga;
  @override
  @JsonKey()
  List<MangaBasicModel> get uploadedManga {
    if (_uploadedManga is EqualUnmodifiableListView) return _uploadedManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploadedManga);
  }

  final List<MangaBasicModel> _favoritesManga;
  @override
  @JsonKey()
  List<MangaBasicModel> get favoritesManga {
    if (_favoritesManga is EqualUnmodifiableListView) return _favoritesManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritesManga);
  }

  final List<MangaBasicModel> _dislikedManga;
  @override
  @JsonKey()
  List<MangaBasicModel> get dislikedManga {
    if (_dislikedManga is EqualUnmodifiableListView) return _dislikedManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikedManga);
  }

  final List<MangaBasicModel> _followingManga;
  @override
  @JsonKey()
  List<MangaBasicModel> get followingManga {
    if (_followingManga is EqualUnmodifiableListView) return _followingManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followingManga);
  }

  final List<ReadingHistoryModel> _readingHistory;
  @override
  @JsonKey()
  List<ReadingHistoryModel> get readingHistory {
    if (_readingHistory is EqualUnmodifiableListView) return _readingHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readingHistory);
  }

  final List<CommentModel> _comments;
  @override
  @JsonKey()
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<RatingModel> _ratings;
  @override
  @JsonKey()
  List<RatingModel> get ratings {
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratings);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, isVerified: $isVerified, avatarUrl: $avatarUrl, followers: $followers, following: $following, uploadedManga: $uploadedManga, favoritesManga: $favoritesManga, dislikedManga: $dislikedManga, followingManga: $followingManga, readingHistory: $readingHistory, comments: $comments, ratings: $ratings, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._uploadedManga, _uploadedManga) &&
            const DeepCollectionEquality()
                .equals(other._favoritesManga, _favoritesManga) &&
            const DeepCollectionEquality()
                .equals(other._dislikedManga, _dislikedManga) &&
            const DeepCollectionEquality()
                .equals(other._followingManga, _followingManga) &&
            const DeepCollectionEquality()
                .equals(other._readingHistory, _readingHistory) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      isVerified,
      avatarUrl,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_uploadedManga),
      const DeepCollectionEquality().hash(_favoritesManga),
      const DeepCollectionEquality().hash(_dislikedManga),
      const DeepCollectionEquality().hash(_followingManga),
      const DeepCollectionEquality().hash(_readingHistory),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_ratings),
      createdAt,
      updatedAt);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final String email,
      final bool isVerified,
      final String? avatarUrl,
      final List<UserBasicModel> followers,
      final List<UserBasicModel> following,
      final List<MangaBasicModel> uploadedManga,
      final List<MangaBasicModel> favoritesManga,
      final List<MangaBasicModel> dislikedManga,
      final List<MangaBasicModel> followingManga,
      final List<ReadingHistoryModel> readingHistory,
      final List<CommentModel> comments,
      final List<RatingModel> ratings,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  bool get isVerified;
  @override
  String? get avatarUrl;
  @override
  List<UserBasicModel> get followers;
  @override
  List<UserBasicModel> get following;
  @override
  List<MangaBasicModel> get uploadedManga;
  @override
  List<MangaBasicModel> get favoritesManga;
  @override
  List<MangaBasicModel> get dislikedManga;
  @override
  List<MangaBasicModel> get followingManga;
  @override
  List<ReadingHistoryModel> get readingHistory;
  @override
  List<CommentModel> get comments;
  @override
  List<RatingModel> get ratings;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBasicModel _$UserBasicModelFromJson(Map<String, dynamic> json) {
  return _UserBasicModel.fromJson(json);
}

/// @nodoc
mixin _$UserBasicModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this UserBasicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBasicModelCopyWith<UserBasicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBasicModelCopyWith<$Res> {
  factory $UserBasicModelCopyWith(
          UserBasicModel value, $Res Function(UserBasicModel) then) =
      _$UserBasicModelCopyWithImpl<$Res, UserBasicModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String email,
      String? avatarUrl});
}

/// @nodoc
class _$UserBasicModelCopyWithImpl<$Res, $Val extends UserBasicModel>
    implements $UserBasicModelCopyWith<$Res> {
  _$UserBasicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBasicModelImplCopyWith<$Res>
    implements $UserBasicModelCopyWith<$Res> {
  factory _$$UserBasicModelImplCopyWith(_$UserBasicModelImpl value,
          $Res Function(_$UserBasicModelImpl) then) =
      __$$UserBasicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String email,
      String? avatarUrl});
}

/// @nodoc
class __$$UserBasicModelImplCopyWithImpl<$Res>
    extends _$UserBasicModelCopyWithImpl<$Res, _$UserBasicModelImpl>
    implements _$$UserBasicModelImplCopyWith<$Res> {
  __$$UserBasicModelImplCopyWithImpl(
      _$UserBasicModelImpl _value, $Res Function(_$UserBasicModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$UserBasicModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$UserBasicModelImpl implements _UserBasicModel {
  _$UserBasicModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.email,
      this.avatarUrl});

  factory _$UserBasicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBasicModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'UserBasicModel(id: $id, name: $name, email: $email, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBasicModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, avatarUrl);

  /// Create a copy of UserBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBasicModelImplCopyWith<_$UserBasicModelImpl> get copyWith =>
      __$$UserBasicModelImplCopyWithImpl<_$UserBasicModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBasicModelImplToJson(
      this,
    );
  }
}

abstract class _UserBasicModel implements UserBasicModel {
  factory _UserBasicModel(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final String email,
      final String? avatarUrl}) = _$UserBasicModelImpl;

  factory _UserBasicModel.fromJson(Map<String, dynamic> json) =
      _$UserBasicModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String? get avatarUrl;

  /// Create a copy of UserBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBasicModelImplCopyWith<_$UserBasicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaBasicModel _$MangaBasicModelFromJson(Map<String, dynamic> json) {
  return _MangaBasicModel.fromJson(json);
}

/// @nodoc
mixin _$MangaBasicModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String? get coverImg => throw _privateConstructorUsedError;

  /// Serializes this MangaBasicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaBasicModelCopyWith<MangaBasicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaBasicModelCopyWith<$Res> {
  factory $MangaBasicModelCopyWith(
          MangaBasicModel value, $Res Function(MangaBasicModel) then) =
      _$MangaBasicModelCopyWithImpl<$Res, MangaBasicModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String author,
      String? coverImg});
}

/// @nodoc
class _$MangaBasicModelCopyWithImpl<$Res, $Val extends MangaBasicModel>
    implements $MangaBasicModelCopyWith<$Res> {
  _$MangaBasicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? coverImg = freezed,
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
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaBasicModelImplCopyWith<$Res>
    implements $MangaBasicModelCopyWith<$Res> {
  factory _$$MangaBasicModelImplCopyWith(_$MangaBasicModelImpl value,
          $Res Function(_$MangaBasicModelImpl) then) =
      __$$MangaBasicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String author,
      String? coverImg});
}

/// @nodoc
class __$$MangaBasicModelImplCopyWithImpl<$Res>
    extends _$MangaBasicModelCopyWithImpl<$Res, _$MangaBasicModelImpl>
    implements _$$MangaBasicModelImplCopyWith<$Res> {
  __$$MangaBasicModelImplCopyWithImpl(
      _$MangaBasicModelImpl _value, $Res Function(_$MangaBasicModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? coverImg = freezed,
  }) {
    return _then(_$MangaBasicModelImpl(
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
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaBasicModelImpl implements _MangaBasicModel {
  _$MangaBasicModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.author,
      this.coverImg});

  factory _$MangaBasicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaBasicModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String author;
  @override
  final String? coverImg;

  @override
  String toString() {
    return 'MangaBasicModel(id: $id, title: $title, author: $author, coverImg: $coverImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaBasicModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, author, coverImg);

  /// Create a copy of MangaBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaBasicModelImplCopyWith<_$MangaBasicModelImpl> get copyWith =>
      __$$MangaBasicModelImplCopyWithImpl<_$MangaBasicModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaBasicModelImplToJson(
      this,
    );
  }
}

abstract class _MangaBasicModel implements MangaBasicModel {
  factory _MangaBasicModel(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String author,
      final String? coverImg}) = _$MangaBasicModelImpl;

  factory _MangaBasicModel.fromJson(Map<String, dynamic> json) =
      _$MangaBasicModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String? get coverImg;

  /// Create a copy of MangaBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaBasicModelImplCopyWith<_$MangaBasicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingHistoryModel _$ReadingHistoryModelFromJson(Map<String, dynamic> json) {
  return _ReadingHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$ReadingHistoryModel {
  MangaBasicModel get manga => throw _privateConstructorUsedError;
  ChapterBasicModel get chapter => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReadingHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingHistoryModelCopyWith<ReadingHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingHistoryModelCopyWith<$Res> {
  factory $ReadingHistoryModelCopyWith(
          ReadingHistoryModel value, $Res Function(ReadingHistoryModel) then) =
      _$ReadingHistoryModelCopyWithImpl<$Res, ReadingHistoryModel>;
  @useResult
  $Res call(
      {MangaBasicModel manga, ChapterBasicModel chapter, DateTime updatedAt});

  $MangaBasicModelCopyWith<$Res> get manga;
  $ChapterBasicModelCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ReadingHistoryModelCopyWithImpl<$Res, $Val extends ReadingHistoryModel>
    implements $ReadingHistoryModelCopyWith<$Res> {
  _$ReadingHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manga = null,
    Object? chapter = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterBasicModel,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MangaBasicModelCopyWith<$Res> get manga {
    return $MangaBasicModelCopyWith<$Res>(_value.manga, (value) {
      return _then(_value.copyWith(manga: value) as $Val);
    });
  }

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterBasicModelCopyWith<$Res> get chapter {
    return $ChapterBasicModelCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadingHistoryModelImplCopyWith<$Res>
    implements $ReadingHistoryModelCopyWith<$Res> {
  factory _$$ReadingHistoryModelImplCopyWith(_$ReadingHistoryModelImpl value,
          $Res Function(_$ReadingHistoryModelImpl) then) =
      __$$ReadingHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MangaBasicModel manga, ChapterBasicModel chapter, DateTime updatedAt});

  @override
  $MangaBasicModelCopyWith<$Res> get manga;
  @override
  $ChapterBasicModelCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ReadingHistoryModelImplCopyWithImpl<$Res>
    extends _$ReadingHistoryModelCopyWithImpl<$Res, _$ReadingHistoryModelImpl>
    implements _$$ReadingHistoryModelImplCopyWith<$Res> {
  __$$ReadingHistoryModelImplCopyWithImpl(_$ReadingHistoryModelImpl _value,
      $Res Function(_$ReadingHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manga = null,
    Object? chapter = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ReadingHistoryModelImpl(
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterBasicModel,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingHistoryModelImpl implements _ReadingHistoryModel {
  _$ReadingHistoryModelImpl(
      {required this.manga, required this.chapter, required this.updatedAt});

  factory _$ReadingHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingHistoryModelImplFromJson(json);

  @override
  final MangaBasicModel manga;
  @override
  final ChapterBasicModel chapter;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ReadingHistoryModel(manga: $manga, chapter: $chapter, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingHistoryModelImpl &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, manga, chapter, updatedAt);

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingHistoryModelImplCopyWith<_$ReadingHistoryModelImpl> get copyWith =>
      __$$ReadingHistoryModelImplCopyWithImpl<_$ReadingHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _ReadingHistoryModel implements ReadingHistoryModel {
  factory _ReadingHistoryModel(
      {required final MangaBasicModel manga,
      required final ChapterBasicModel chapter,
      required final DateTime updatedAt}) = _$ReadingHistoryModelImpl;

  factory _ReadingHistoryModel.fromJson(Map<String, dynamic> json) =
      _$ReadingHistoryModelImpl.fromJson;

  @override
  MangaBasicModel get manga;
  @override
  ChapterBasicModel get chapter;
  @override
  DateTime get updatedAt;

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingHistoryModelImplCopyWith<_$ReadingHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterBasicModel _$ChapterBasicModelFromJson(Map<String, dynamic> json) {
  return _ChapterBasicModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterBasicModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String? get chapterTitle => throw _privateConstructorUsedError;
  String get chapterType => throw _privateConstructorUsedError;

  /// Serializes this ChapterBasicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterBasicModelCopyWith<ChapterBasicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterBasicModelCopyWith<$Res> {
  factory $ChapterBasicModelCopyWith(
          ChapterBasicModel value, $Res Function(ChapterBasicModel) then) =
      _$ChapterBasicModelCopyWithImpl<$Res, ChapterBasicModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      int number,
      String? chapterTitle,
      String chapterType});
}

/// @nodoc
class _$ChapterBasicModelCopyWithImpl<$Res, $Val extends ChapterBasicModel>
    implements $ChapterBasicModelCopyWith<$Res> {
  _$ChapterBasicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? chapterTitle = freezed,
    Object? chapterType = null,
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
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterType: null == chapterType
          ? _value.chapterType
          : chapterType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterBasicModelImplCopyWith<$Res>
    implements $ChapterBasicModelCopyWith<$Res> {
  factory _$$ChapterBasicModelImplCopyWith(_$ChapterBasicModelImpl value,
          $Res Function(_$ChapterBasicModelImpl) then) =
      __$$ChapterBasicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      int number,
      String? chapterTitle,
      String chapterType});
}

/// @nodoc
class __$$ChapterBasicModelImplCopyWithImpl<$Res>
    extends _$ChapterBasicModelCopyWithImpl<$Res, _$ChapterBasicModelImpl>
    implements _$$ChapterBasicModelImplCopyWith<$Res> {
  __$$ChapterBasicModelImplCopyWithImpl(_$ChapterBasicModelImpl _value,
      $Res Function(_$ChapterBasicModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? chapterTitle = freezed,
    Object? chapterType = null,
  }) {
    return _then(_$ChapterBasicModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterType: null == chapterType
          ? _value.chapterType
          : chapterType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterBasicModelImpl implements _ChapterBasicModel {
  _$ChapterBasicModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.number,
      this.chapterTitle,
      required this.chapterType});

  factory _$ChapterBasicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterBasicModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final int number;
  @override
  final String? chapterTitle;
  @override
  final String chapterType;

  @override
  String toString() {
    return 'ChapterBasicModel(id: $id, number: $number, chapterTitle: $chapterTitle, chapterType: $chapterType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterBasicModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.chapterTitle, chapterTitle) ||
                other.chapterTitle == chapterTitle) &&
            (identical(other.chapterType, chapterType) ||
                other.chapterType == chapterType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, number, chapterTitle, chapterType);

  /// Create a copy of ChapterBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterBasicModelImplCopyWith<_$ChapterBasicModelImpl> get copyWith =>
      __$$ChapterBasicModelImplCopyWithImpl<_$ChapterBasicModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterBasicModelImplToJson(
      this,
    );
  }
}

abstract class _ChapterBasicModel implements ChapterBasicModel {
  factory _ChapterBasicModel(
      {@JsonKey(name: '_id') required final String id,
      required final int number,
      final String? chapterTitle,
      required final String chapterType}) = _$ChapterBasicModelImpl;

  factory _ChapterBasicModel.fromJson(Map<String, dynamic> json) =
      _$ChapterBasicModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  int get number;
  @override
  String? get chapterTitle;
  @override
  String get chapterType;

  /// Create a copy of ChapterBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterBasicModelImplCopyWith<_$ChapterBasicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String? get manga => throw _privateConstructorUsedError;
  String? get parentComment => throw _privateConstructorUsedError;
  String? get replyToUser => throw _privateConstructorUsedError;
  List<String> get replies => throw _privateConstructorUsedError;
  List<MentionModel> get mentions => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get version => throw _privateConstructorUsedError;

  /// Serializes this CommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      String user,
      String? manga,
      String? parentComment,
      String? replyToUser,
      List<String> replies,
      List<MentionModel> mentions,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime createdAt,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime updatedAt,
      @JsonKey(name: '__v') int? version});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? user = null,
    Object? manga = freezed,
    Object? parentComment = freezed,
    Object? replyToUser = freezed,
    Object? replies = null,
    Object? mentions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = freezed,
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
              as String,
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
              as String?,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<MentionModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      String user,
      String? manga,
      String? parentComment,
      String? replyToUser,
      List<String> replies,
      List<MentionModel> mentions,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime createdAt,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime updatedAt,
      @JsonKey(name: '__v') int? version});
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? user = null,
    Object? manga = freezed,
    Object? parentComment = freezed,
    Object? replyToUser = freezed,
    Object? replies = null,
    Object? mentions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = freezed,
  }) {
    return _then(_$CommentModelImpl(
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
              as String,
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
              as String?,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentions: null == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<MentionModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl implements _CommentModel {
  _$CommentModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.content,
      required this.user,
      this.manga,
      this.parentComment,
      this.replyToUser,
      final List<String> replies = const [],
      final List<MentionModel> mentions = const [],
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      required this.createdAt,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      required this.updatedAt,
      @JsonKey(name: '__v') this.version})
      : _replies = replies,
        _mentions = mentions;

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String content;
  @override
  final String user;
  @override
  final String? manga;
  @override
  final String? parentComment;
  @override
  final String? replyToUser;
  final List<String> _replies;
  @override
  @JsonKey()
  List<String> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  final List<MentionModel> _mentions;
  @override
  @JsonKey()
  List<MentionModel> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? version;

  @override
  String toString() {
    return 'CommentModel(id: $id, content: $content, user: $user, manga: $manga, parentComment: $parentComment, replyToUser: $replyToUser, replies: $replies, mentions: $mentions, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment) &&
            (identical(other.replyToUser, replyToUser) ||
                other.replyToUser == replyToUser) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
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
      content,
      user,
      manga,
      parentComment,
      replyToUser,
      const DeepCollectionEquality().hash(_replies),
      const DeepCollectionEquality().hash(_mentions),
      createdAt,
      updatedAt,
      version);

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  factory _CommentModel(
      {@JsonKey(name: '_id') required final String id,
      required final String content,
      required final String user,
      final String? manga,
      final String? parentComment,
      final String? replyToUser,
      final List<String> replies,
      final List<MentionModel> mentions,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      required final DateTime createdAt,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      required final DateTime updatedAt,
      @JsonKey(name: '__v') final int? version}) = _$CommentModelImpl;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get content;
  @override
  String get user;
  @override
  String? get manga;
  @override
  String? get parentComment;
  @override
  String? get replyToUser;
  @override
  List<String> get replies;
  @override
  List<MentionModel> get mentions;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get createdAt;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get version;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MentionModel _$MentionModelFromJson(Map<String, dynamic> json) {
  return _MentionModel.fromJson(json);
}

/// @nodoc
mixin _$MentionModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;

  /// Serializes this MentionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentionModelCopyWith<MentionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionModelCopyWith<$Res> {
  factory $MentionModelCopyWith(
          MentionModel value, $Res Function(MentionModel) then) =
      _$MentionModelCopyWithImpl<$Res, MentionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String userId,
      String username,
      int startIndex,
      int endIndex});
}

/// @nodoc
class _$MentionModelCopyWithImpl<$Res, $Val extends MentionModel>
    implements $MentionModelCopyWith<$Res> {
  _$MentionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? username = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$MentionModelImplCopyWith<$Res>
    implements $MentionModelCopyWith<$Res> {
  factory _$$MentionModelImplCopyWith(
          _$MentionModelImpl value, $Res Function(_$MentionModelImpl) then) =
      __$$MentionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String userId,
      String username,
      int startIndex,
      int endIndex});
}

/// @nodoc
class __$$MentionModelImplCopyWithImpl<$Res>
    extends _$MentionModelCopyWithImpl<$Res, _$MentionModelImpl>
    implements _$$MentionModelImplCopyWith<$Res> {
  __$$MentionModelImplCopyWithImpl(
      _$MentionModelImpl _value, $Res Function(_$MentionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? username = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_$MentionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$MentionModelImpl implements _MentionModel {
  _$MentionModelImpl(
      {@JsonKey(name: '_id') this.id,
      required this.userId,
      required this.username,
      required this.startIndex,
      required this.endIndex});

  factory _$MentionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentionModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String userId;
  @override
  final String username;
  @override
  final int startIndex;
  @override
  final int endIndex;

  @override
  String toString() {
    return 'MentionModel(id: $id, userId: $userId, username: $username, startIndex: $startIndex, endIndex: $endIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentionModelImpl &&
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

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentionModelImplCopyWith<_$MentionModelImpl> get copyWith =>
      __$$MentionModelImplCopyWithImpl<_$MentionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentionModelImplToJson(
      this,
    );
  }
}

abstract class _MentionModel implements MentionModel {
  factory _MentionModel(
      {@JsonKey(name: '_id') final String? id,
      required final String userId,
      required final String username,
      required final int startIndex,
      required final int endIndex}) = _$MentionModelImpl;

  factory _MentionModel.fromJson(Map<String, dynamic> json) =
      _$MentionModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String get userId;
  @override
  String get username;
  @override
  int get startIndex;
  @override
  int get endIndex;

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentionModelImplCopyWith<_$MentionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) {
  return _RatingModel.fromJson(json);
}

/// @nodoc
mixin _$RatingModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  UserBasicModel get user => throw _privateConstructorUsedError;
  MangaBasicModel get manga => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RatingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingModelCopyWith<RatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingModelCopyWith<$Res> {
  factory $RatingModelCopyWith(
          RatingModel value, $Res Function(RatingModel) then) =
      _$RatingModelCopyWithImpl<$Res, RatingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserBasicModel user,
      MangaBasicModel manga,
      double rating,
      DateTime createdAt,
      DateTime updatedAt});

  $UserBasicModelCopyWith<$Res> get user;
  $MangaBasicModelCopyWith<$Res> get manga;
}

/// @nodoc
class _$RatingModelCopyWithImpl<$Res, $Val extends RatingModel>
    implements $RatingModelCopyWith<$Res> {
  _$RatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? manga = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserBasicModel,
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserBasicModelCopyWith<$Res> get user {
    return $UserBasicModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MangaBasicModelCopyWith<$Res> get manga {
    return $MangaBasicModelCopyWith<$Res>(_value.manga, (value) {
      return _then(_value.copyWith(manga: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingModelImplCopyWith<$Res>
    implements $RatingModelCopyWith<$Res> {
  factory _$$RatingModelImplCopyWith(
          _$RatingModelImpl value, $Res Function(_$RatingModelImpl) then) =
      __$$RatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserBasicModel user,
      MangaBasicModel manga,
      double rating,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserBasicModelCopyWith<$Res> get user;
  @override
  $MangaBasicModelCopyWith<$Res> get manga;
}

/// @nodoc
class __$$RatingModelImplCopyWithImpl<$Res>
    extends _$RatingModelCopyWithImpl<$Res, _$RatingModelImpl>
    implements _$$RatingModelImplCopyWith<$Res> {
  __$$RatingModelImplCopyWithImpl(
      _$RatingModelImpl _value, $Res Function(_$RatingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? manga = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RatingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserBasicModel,
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingModelImpl implements _RatingModel {
  _$RatingModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.user,
      required this.manga,
      required this.rating,
      required this.createdAt,
      required this.updatedAt});

  factory _$RatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final UserBasicModel user;
  @override
  final MangaBasicModel manga;
  @override
  final double rating;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'RatingModel(id: $id, user: $user, manga: $manga, rating: $rating, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, manga, rating, createdAt, updatedAt);

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      __$$RatingModelImplCopyWithImpl<_$RatingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingModelImplToJson(
      this,
    );
  }
}

abstract class _RatingModel implements RatingModel {
  factory _RatingModel(
      {@JsonKey(name: '_id') required final String id,
      required final UserBasicModel user,
      required final MangaBasicModel manga,
      required final double rating,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$RatingModelImpl;

  factory _RatingModel.fromJson(Map<String, dynamic> json) =
      _$RatingModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  UserBasicModel get user;
  @override
  MangaBasicModel get manga;
  @override
  double get rating;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
