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
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'user')
  String get role => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<UserBasicModel> get followers => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<UserBasicModel> get following => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get uploadedManga => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get favoritesManga =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get dislikedManga => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get followingManga =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<ReadingHistoryModel> get readingHistory =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get comments => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<RatingModel> get ratings => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

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
      String? avatarUrl,
      @JsonKey(defaultValue: 'user') String role,
      bool isVerified,
      @JsonKey(defaultValue: []) List<UserBasicModel> followers,
      @JsonKey(defaultValue: []) List<UserBasicModel> following,
      @JsonKey(defaultValue: []) List<MangaBasicModel> uploadedManga,
      @JsonKey(defaultValue: []) List<MangaBasicModel> favoritesManga,
      @JsonKey(defaultValue: []) List<MangaBasicModel> dislikedManga,
      @JsonKey(defaultValue: []) List<MangaBasicModel> followingManga,
      @JsonKey(defaultValue: []) List<ReadingHistoryModel> readingHistory,
      @JsonKey(defaultValue: []) List<String> comments,
      @JsonKey(defaultValue: []) List<RatingModel> ratings,
      String createdAt,
      String updatedAt});
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
    Object? avatarUrl = freezed,
    Object? role = null,
    Object? isVerified = null,
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
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as List<String>,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      String? avatarUrl,
      @JsonKey(defaultValue: 'user') String role,
      bool isVerified,
      @JsonKey(defaultValue: []) List<UserBasicModel> followers,
      @JsonKey(defaultValue: []) List<UserBasicModel> following,
      @JsonKey(defaultValue: []) List<MangaBasicModel> uploadedManga,
      @JsonKey(defaultValue: []) List<MangaBasicModel> favoritesManga,
      @JsonKey(defaultValue: []) List<MangaBasicModel> dislikedManga,
      @JsonKey(defaultValue: []) List<MangaBasicModel> followingManga,
      @JsonKey(defaultValue: []) List<ReadingHistoryModel> readingHistory,
      @JsonKey(defaultValue: []) List<String> comments,
      @JsonKey(defaultValue: []) List<RatingModel> ratings,
      String createdAt,
      String updatedAt});
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
    Object? avatarUrl = freezed,
    Object? role = null,
    Object? isVerified = null,
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
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as List<String>,
      ratings: null == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.avatarUrl,
      @JsonKey(defaultValue: 'user') required this.role,
      required this.isVerified,
      @JsonKey(defaultValue: [])
      final List<UserBasicModel> followers = const [],
      @JsonKey(defaultValue: [])
      final List<UserBasicModel> following = const [],
      @JsonKey(defaultValue: [])
      final List<MangaBasicModel> uploadedManga = const [],
      @JsonKey(defaultValue: [])
      final List<MangaBasicModel> favoritesManga = const [],
      @JsonKey(defaultValue: [])
      final List<MangaBasicModel> dislikedManga = const [],
      @JsonKey(defaultValue: [])
      final List<MangaBasicModel> followingManga = const [],
      @JsonKey(defaultValue: [])
      final List<ReadingHistoryModel> readingHistory = const [],
      @JsonKey(defaultValue: []) final List<String> comments = const [],
      @JsonKey(defaultValue: []) final List<RatingModel> ratings = const [],
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
  final String? avatarUrl;
  @override
  @JsonKey(defaultValue: 'user')
  final String role;
  @override
  final bool isVerified;
  final List<UserBasicModel> _followers;
  @override
  @JsonKey(defaultValue: [])
  List<UserBasicModel> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<UserBasicModel> _following;
  @override
  @JsonKey(defaultValue: [])
  List<UserBasicModel> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<MangaBasicModel> _uploadedManga;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get uploadedManga {
    if (_uploadedManga is EqualUnmodifiableListView) return _uploadedManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploadedManga);
  }

  final List<MangaBasicModel> _favoritesManga;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get favoritesManga {
    if (_favoritesManga is EqualUnmodifiableListView) return _favoritesManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritesManga);
  }

  final List<MangaBasicModel> _dislikedManga;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get dislikedManga {
    if (_dislikedManga is EqualUnmodifiableListView) return _dislikedManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikedManga);
  }

  final List<MangaBasicModel> _followingManga;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get followingManga {
    if (_followingManga is EqualUnmodifiableListView) return _followingManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followingManga);
  }

  final List<ReadingHistoryModel> _readingHistory;
  @override
  @JsonKey(defaultValue: [])
  List<ReadingHistoryModel> get readingHistory {
    if (_readingHistory is EqualUnmodifiableListView) return _readingHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readingHistory);
  }

  final List<String> _comments;
  @override
  @JsonKey(defaultValue: [])
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<RatingModel> _ratings;
  @override
  @JsonKey(defaultValue: [])
  List<RatingModel> get ratings {
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratings);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, avatarUrl: $avatarUrl, role: $role, isVerified: $isVerified, followers: $followers, following: $following, uploadedManga: $uploadedManga, favoritesManga: $favoritesManga, dislikedManga: $dislikedManga, followingManga: $followingManga, readingHistory: $readingHistory, comments: $comments, ratings: $ratings, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
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
      avatarUrl,
      role,
      isVerified,
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
      final String? avatarUrl,
      @JsonKey(defaultValue: 'user') required final String role,
      required final bool isVerified,
      @JsonKey(defaultValue: []) final List<UserBasicModel> followers,
      @JsonKey(defaultValue: []) final List<UserBasicModel> following,
      @JsonKey(defaultValue: []) final List<MangaBasicModel> uploadedManga,
      @JsonKey(defaultValue: []) final List<MangaBasicModel> favoritesManga,
      @JsonKey(defaultValue: []) final List<MangaBasicModel> dislikedManga,
      @JsonKey(defaultValue: []) final List<MangaBasicModel> followingManga,
      @JsonKey(defaultValue: []) final List<ReadingHistoryModel> readingHistory,
      @JsonKey(defaultValue: []) final List<String> comments,
      @JsonKey(defaultValue: []) final List<RatingModel> ratings,
      required final String createdAt,
      required final String updatedAt}) = _$UserModelImpl;

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
  String? get avatarUrl;
  @override
  @JsonKey(defaultValue: 'user')
  String get role;
  @override
  bool get isVerified;
  @override
  @JsonKey(defaultValue: [])
  List<UserBasicModel> get followers;
  @override
  @JsonKey(defaultValue: [])
  List<UserBasicModel> get following;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get uploadedManga;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get favoritesManga;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get dislikedManga;
  @override
  @JsonKey(defaultValue: [])
  List<MangaBasicModel> get followingManga;
  @override
  @JsonKey(defaultValue: [])
  List<ReadingHistoryModel> get readingHistory;
  @override
  @JsonKey(defaultValue: [])
  List<String> get comments;
  @override
  @JsonKey(defaultValue: [])
  List<RatingModel> get ratings;
  @override
  String get createdAt;
  @override
  String get updatedAt;

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
  String? get email => throw _privateConstructorUsedError;
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
      String? email,
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
    Object? email = freezed,
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
      String? email,
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
    Object? email = freezed,
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
class _$UserBasicModelImpl implements _UserBasicModel {
  _$UserBasicModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.email,
      this.avatarUrl});

  factory _$UserBasicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBasicModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? email;
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
      final String? email,
      final String? avatarUrl}) = _$UserBasicModelImpl;

  factory _UserBasicModel.fromJson(Map<String, dynamic> json) =
      _$UserBasicModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get email;
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
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  MangaBasicModel get manga => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<ChapterReadModel> get chapters => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String id,
      MangaBasicModel manga,
      @JsonKey(defaultValue: []) List<ChapterReadModel> chapters,
      String updatedAt});

  $MangaBasicModelCopyWith<$Res> get manga;
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
    Object? id = null,
    Object? manga = null,
    Object? chapters = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterReadModel>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: '_id') String id,
      MangaBasicModel manga,
      @JsonKey(defaultValue: []) List<ChapterReadModel> chapters,
      String updatedAt});

  @override
  $MangaBasicModelCopyWith<$Res> get manga;
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
    Object? id = null,
    Object? manga = null,
    Object? chapters = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ReadingHistoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterReadModel>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingHistoryModelImpl implements _ReadingHistoryModel {
  _$ReadingHistoryModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.manga,
      @JsonKey(defaultValue: [])
      final List<ChapterReadModel> chapters = const [],
      required this.updatedAt})
      : _chapters = chapters;

  factory _$ReadingHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final MangaBasicModel manga;
  final List<ChapterReadModel> _chapters;
  @override
  @JsonKey(defaultValue: [])
  List<ChapterReadModel> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  final String updatedAt;

  @override
  String toString() {
    return 'ReadingHistoryModel(id: $id, manga: $manga, chapters: $chapters, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingHistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.manga, manga) || other.manga == manga) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, manga,
      const DeepCollectionEquality().hash(_chapters), updatedAt);

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
      {@JsonKey(name: '_id') required final String id,
      required final MangaBasicModel manga,
      @JsonKey(defaultValue: []) final List<ChapterReadModel> chapters,
      required final String updatedAt}) = _$ReadingHistoryModelImpl;

  factory _ReadingHistoryModel.fromJson(Map<String, dynamic> json) =
      _$ReadingHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  MangaBasicModel get manga;
  @override
  @JsonKey(defaultValue: [])
  List<ChapterReadModel> get chapters;
  @override
  String get updatedAt;

  /// Create a copy of ReadingHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingHistoryModelImplCopyWith<_$ReadingHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterReadModel _$ChapterReadModelFromJson(Map<String, dynamic> json) {
  return _ChapterReadModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterReadModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  ChapterInfoModel get chapter => throw _privateConstructorUsedError;
  String get readAt => throw _privateConstructorUsedError;

  /// Serializes this ChapterReadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterReadModelCopyWith<ChapterReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterReadModelCopyWith<$Res> {
  factory $ChapterReadModelCopyWith(
          ChapterReadModel value, $Res Function(ChapterReadModel) then) =
      _$ChapterReadModelCopyWithImpl<$Res, ChapterReadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      ChapterInfoModel chapter,
      String readAt});

  $ChapterInfoModelCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ChapterReadModelCopyWithImpl<$Res, $Val extends ChapterReadModel>
    implements $ChapterReadModelCopyWith<$Res> {
  _$ChapterReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapter = null,
    Object? readAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfoModel,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ChapterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterInfoModelCopyWith<$Res> get chapter {
    return $ChapterInfoModelCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterReadModelImplCopyWith<$Res>
    implements $ChapterReadModelCopyWith<$Res> {
  factory _$$ChapterReadModelImplCopyWith(_$ChapterReadModelImpl value,
          $Res Function(_$ChapterReadModelImpl) then) =
      __$$ChapterReadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      ChapterInfoModel chapter,
      String readAt});

  @override
  $ChapterInfoModelCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ChapterReadModelImplCopyWithImpl<$Res>
    extends _$ChapterReadModelCopyWithImpl<$Res, _$ChapterReadModelImpl>
    implements _$$ChapterReadModelImplCopyWith<$Res> {
  __$$ChapterReadModelImplCopyWithImpl(_$ChapterReadModelImpl _value,
      $Res Function(_$ChapterReadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapter = null,
    Object? readAt = null,
  }) {
    return _then(_$ChapterReadModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterInfoModel,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterReadModelImpl implements _ChapterReadModel {
  _$ChapterReadModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.chapter,
      required this.readAt});

  factory _$ChapterReadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterReadModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final ChapterInfoModel chapter;
  @override
  final String readAt;

  @override
  String toString() {
    return 'ChapterReadModel(id: $id, chapter: $chapter, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterReadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, chapter, readAt);

  /// Create a copy of ChapterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterReadModelImplCopyWith<_$ChapterReadModelImpl> get copyWith =>
      __$$ChapterReadModelImplCopyWithImpl<_$ChapterReadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterReadModelImplToJson(
      this,
    );
  }
}

abstract class _ChapterReadModel implements ChapterReadModel {
  factory _ChapterReadModel(
      {@JsonKey(name: '_id') required final String id,
      required final ChapterInfoModel chapter,
      required final String readAt}) = _$ChapterReadModelImpl;

  factory _ChapterReadModel.fromJson(Map<String, dynamic> json) =
      _$ChapterReadModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  ChapterInfoModel get chapter;
  @override
  String get readAt;

  /// Create a copy of ChapterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterReadModelImplCopyWith<_$ChapterReadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterInfoModel _$ChapterInfoModelFromJson(Map<String, dynamic> json) {
  return _ChapterInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterInfoModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get chapterName => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ChapterInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterInfoModelCopyWith<ChapterInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterInfoModelCopyWith<$Res> {
  factory $ChapterInfoModelCopyWith(
          ChapterInfoModel value, $Res Function(ChapterInfoModel) then) =
      _$ChapterInfoModelCopyWithImpl<$Res, ChapterInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String chapterName, String createdAt});
}

/// @nodoc
class _$ChapterInfoModelCopyWithImpl<$Res, $Val extends ChapterInfoModel>
    implements $ChapterInfoModelCopyWith<$Res> {
  _$ChapterInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterName = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapterName: null == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterInfoModelImplCopyWith<$Res>
    implements $ChapterInfoModelCopyWith<$Res> {
  factory _$$ChapterInfoModelImplCopyWith(_$ChapterInfoModelImpl value,
          $Res Function(_$ChapterInfoModelImpl) then) =
      __$$ChapterInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String chapterName, String createdAt});
}

/// @nodoc
class __$$ChapterInfoModelImplCopyWithImpl<$Res>
    extends _$ChapterInfoModelCopyWithImpl<$Res, _$ChapterInfoModelImpl>
    implements _$$ChapterInfoModelImplCopyWith<$Res> {
  __$$ChapterInfoModelImplCopyWithImpl(_$ChapterInfoModelImpl _value,
      $Res Function(_$ChapterInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterName = null,
    Object? createdAt = null,
  }) {
    return _then(_$ChapterInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapterName: null == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterInfoModelImpl implements _ChapterInfoModel {
  _$ChapterInfoModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.chapterName,
      required this.createdAt});

  factory _$ChapterInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterInfoModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String chapterName;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'ChapterInfoModel(id: $id, chapterName: $chapterName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapterName, chapterName) ||
                other.chapterName == chapterName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, chapterName, createdAt);

  /// Create a copy of ChapterInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterInfoModelImplCopyWith<_$ChapterInfoModelImpl> get copyWith =>
      __$$ChapterInfoModelImplCopyWithImpl<_$ChapterInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ChapterInfoModel implements ChapterInfoModel {
  factory _ChapterInfoModel(
      {@JsonKey(name: '_id') required final String id,
      required final String chapterName,
      required final String createdAt}) = _$ChapterInfoModelImpl;

  factory _ChapterInfoModel.fromJson(Map<String, dynamic> json) =
      _$ChapterInfoModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get chapterName;
  @override
  String get createdAt;

  /// Create a copy of ChapterInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterInfoModelImplCopyWith<_$ChapterInfoModelImpl> get copyWith =>
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
  @JsonKey(defaultValue: [])
  List<String> get replies => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<MentionModel> get mentions => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
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
      @JsonKey(defaultValue: []) List<String> replies,
      @JsonKey(defaultValue: []) List<MentionModel> mentions,
      String createdAt,
      String updatedAt,
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
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(defaultValue: []) List<String> replies,
      @JsonKey(defaultValue: []) List<MentionModel> mentions,
      String createdAt,
      String updatedAt,
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
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(defaultValue: []) final List<String> replies = const [],
      @JsonKey(defaultValue: []) final List<MentionModel> mentions = const [],
      required this.createdAt,
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
  @JsonKey(defaultValue: [])
  List<String> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  final List<MentionModel> _mentions;
  @override
  @JsonKey(defaultValue: [])
  List<MentionModel> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;
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
      @JsonKey(defaultValue: []) final List<String> replies,
      @JsonKey(defaultValue: []) final List<MentionModel> mentions,
      required final String createdAt,
      required final String updatedAt,
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
  @JsonKey(defaultValue: [])
  List<String> get replies;
  @override
  @JsonKey(defaultValue: [])
  List<MentionModel> get mentions;
  @override
  String get createdAt;
  @override
  String get updatedAt;
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
  String get user => throw _privateConstructorUsedError;
  MangaBasicModel get manga => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get version => throw _privateConstructorUsedError;

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
      String user,
      MangaBasicModel manga,
      int score,
      String createdAt,
      String updatedAt,
      @JsonKey(name: '__v') int? version});

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
    Object? score = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
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
    ) as $Val);
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
      String user,
      MangaBasicModel manga,
      int score,
      String createdAt,
      String updatedAt,
      @JsonKey(name: '__v') int? version});

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
    Object? score = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = freezed,
  }) {
    return _then(_$RatingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as MangaBasicModel,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
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
      required this.score,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: '__v') this.version});

  factory _$RatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String user;
  @override
  final MangaBasicModel manga;
  @override
  final int score;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? version;

  @override
  String toString() {
    return 'RatingModel(id: $id, user: $user, manga: $manga, score: $score, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, user, manga, score, createdAt, updatedAt, version);

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
      required final String user,
      required final MangaBasicModel manga,
      required final int score,
      required final String createdAt,
      required final String updatedAt,
      @JsonKey(name: '__v') final int? version}) = _$RatingModelImpl;

  factory _RatingModel.fromJson(Map<String, dynamic> json) =
      _$RatingModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get user;
  @override
  MangaBasicModel get manga;
  @override
  int get score;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get version;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
