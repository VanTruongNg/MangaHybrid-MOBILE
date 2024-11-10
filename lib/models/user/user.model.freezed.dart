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

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  List<Manga> get dislikedManga => throw _privateConstructorUsedError;
  List<Manga> get followingManga => throw _privateConstructorUsedError;
  List<Manga> get uploadedManga => throw _privateConstructorUsedError;
  List<User> get following => throw _privateConstructorUsedError;
  List<User> get followers => throw _privateConstructorUsedError;
  List<ReadingHistoryItem> get readingHistory =>
      throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get version => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String name,
      String email,
      String? password,
      Role role,
      bool isVerified,
      String? avatarUrl,
      List<Manga> dislikedManga,
      List<Manga> followingManga,
      List<Manga> uploadedManga,
      List<User> following,
      List<User> followers,
      List<ReadingHistoryItem> readingHistory,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: '__v') int? version});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? email = null,
    Object? password = freezed,
    Object? role = null,
    Object? isVerified = null,
    Object? avatarUrl = freezed,
    Object? dislikedManga = null,
    Object? followingManga = null,
    Object? uploadedManga = null,
    Object? following = null,
    Object? followers = null,
    Object? readingHistory = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dislikedManga: null == dislikedManga
          ? _value.dislikedManga
          : dislikedManga // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
      followingManga: null == followingManga
          ? _value.followingManga
          : followingManga // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
      uploadedManga: null == uploadedManga
          ? _value.uploadedManga
          : uploadedManga // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<User>,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      readingHistory: null == readingHistory
          ? _value.readingHistory
          : readingHistory // ignore: cast_nullable_to_non_nullable
              as List<ReadingHistoryItem>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String name,
      String email,
      String? password,
      Role role,
      bool isVerified,
      String? avatarUrl,
      List<Manga> dislikedManga,
      List<Manga> followingManga,
      List<Manga> uploadedManga,
      List<User> following,
      List<User> followers,
      List<ReadingHistoryItem> readingHistory,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: '__v') int? version});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? email = null,
    Object? password = freezed,
    Object? role = null,
    Object? isVerified = null,
    Object? avatarUrl = freezed,
    Object? dislikedManga = null,
    Object? followingManga = null,
    Object? uploadedManga = null,
    Object? following = null,
    Object? followers = null,
    Object? readingHistory = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dislikedManga: null == dislikedManga
          ? _value._dislikedManga
          : dislikedManga // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
      followingManga: null == followingManga
          ? _value._followingManga
          : followingManga // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
      uploadedManga: null == uploadedManga
          ? _value._uploadedManga
          : uploadedManga // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<User>,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      readingHistory: null == readingHistory
          ? _value._readingHistory
          : readingHistory // ignore: cast_nullable_to_non_nullable
              as List<ReadingHistoryItem>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: '_id') this.id,
      required this.name,
      required this.email,
      this.password,
      this.role = Role.reader,
      this.isVerified = false,
      this.avatarUrl,
      final List<Manga> dislikedManga = const [],
      final List<Manga> followingManga = const [],
      final List<Manga> uploadedManga = const [],
      final List<User> following = const [],
      final List<User> followers = const [],
      final List<ReadingHistoryItem> readingHistory = const [],
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: '__v') this.version})
      : _dislikedManga = dislikedManga,
        _followingManga = followingManga,
        _uploadedManga = uploadedManga,
        _following = following,
        _followers = followers,
        _readingHistory = readingHistory;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? password;
  @override
  @JsonKey()
  final Role role;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  final String? avatarUrl;
  final List<Manga> _dislikedManga;
  @override
  @JsonKey()
  List<Manga> get dislikedManga {
    if (_dislikedManga is EqualUnmodifiableListView) return _dislikedManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikedManga);
  }

  final List<Manga> _followingManga;
  @override
  @JsonKey()
  List<Manga> get followingManga {
    if (_followingManga is EqualUnmodifiableListView) return _followingManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followingManga);
  }

  final List<Manga> _uploadedManga;
  @override
  @JsonKey()
  List<Manga> get uploadedManga {
    if (_uploadedManga is EqualUnmodifiableListView) return _uploadedManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploadedManga);
  }

  final List<User> _following;
  @override
  @JsonKey()
  List<User> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<User> _followers;
  @override
  @JsonKey()
  List<User> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<ReadingHistoryItem> _readingHistory;
  @override
  @JsonKey()
  List<ReadingHistoryItem> get readingHistory {
    if (_readingHistory is EqualUnmodifiableListView) return _readingHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readingHistory);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? version;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, password: $password, role: $role, isVerified: $isVerified, avatarUrl: $avatarUrl, dislikedManga: $dislikedManga, followingManga: $followingManga, uploadedManga: $uploadedManga, following: $following, followers: $followers, readingHistory: $readingHistory, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._dislikedManga, _dislikedManga) &&
            const DeepCollectionEquality()
                .equals(other._followingManga, _followingManga) &&
            const DeepCollectionEquality()
                .equals(other._uploadedManga, _uploadedManga) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._readingHistory, _readingHistory) &&
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
      name,
      email,
      password,
      role,
      isVerified,
      avatarUrl,
      const DeepCollectionEquality().hash(_dislikedManga),
      const DeepCollectionEquality().hash(_followingManga),
      const DeepCollectionEquality().hash(_uploadedManga),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_readingHistory),
      createdAt,
      updatedAt,
      version);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: '_id') final String? id,
      required final String name,
      required final String email,
      final String? password,
      final Role role,
      final bool isVerified,
      final String? avatarUrl,
      final List<Manga> dislikedManga,
      final List<Manga> followingManga,
      final List<Manga> uploadedManga,
      final List<User> following,
      final List<User> followers,
      final List<ReadingHistoryItem> readingHistory,
      final String? createdAt,
      final String? updatedAt,
      @JsonKey(name: '__v') final int? version}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String? get password;
  @override
  Role get role;
  @override
  bool get isVerified;
  @override
  String? get avatarUrl;
  @override
  List<Manga> get dislikedManga;
  @override
  List<Manga> get followingManga;
  @override
  List<Manga> get uploadedManga;
  @override
  List<User> get following;
  @override
  List<User> get followers;
  @override
  List<ReadingHistoryItem> get readingHistory;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get version;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingHistoryItem _$ReadingHistoryItemFromJson(Map<String, dynamic> json) {
  return _ReadingHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$ReadingHistoryItem {
  Manga get manga => throw _privateConstructorUsedError;
  Chapter get chapter => throw _privateConstructorUsedError;

  /// Serializes this ReadingHistoryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingHistoryItemCopyWith<ReadingHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingHistoryItemCopyWith<$Res> {
  factory $ReadingHistoryItemCopyWith(
          ReadingHistoryItem value, $Res Function(ReadingHistoryItem) then) =
      _$ReadingHistoryItemCopyWithImpl<$Res, ReadingHistoryItem>;
  @useResult
  $Res call({Manga manga, Chapter chapter});

  $MangaCopyWith<$Res> get manga;
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ReadingHistoryItemCopyWithImpl<$Res, $Val extends ReadingHistoryItem>
    implements $ReadingHistoryItemCopyWith<$Res> {
  _$ReadingHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manga = null,
    Object? chapter = null,
  }) {
    return _then(_value.copyWith(
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as Manga,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
    ) as $Val);
  }

  /// Create a copy of ReadingHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MangaCopyWith<$Res> get manga {
    return $MangaCopyWith<$Res>(_value.manga, (value) {
      return _then(_value.copyWith(manga: value) as $Val);
    });
  }

  /// Create a copy of ReadingHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterCopyWith<$Res> get chapter {
    return $ChapterCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadingHistoryItemImplCopyWith<$Res>
    implements $ReadingHistoryItemCopyWith<$Res> {
  factory _$$ReadingHistoryItemImplCopyWith(_$ReadingHistoryItemImpl value,
          $Res Function(_$ReadingHistoryItemImpl) then) =
      __$$ReadingHistoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Manga manga, Chapter chapter});

  @override
  $MangaCopyWith<$Res> get manga;
  @override
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ReadingHistoryItemImplCopyWithImpl<$Res>
    extends _$ReadingHistoryItemCopyWithImpl<$Res, _$ReadingHistoryItemImpl>
    implements _$$ReadingHistoryItemImplCopyWith<$Res> {
  __$$ReadingHistoryItemImplCopyWithImpl(_$ReadingHistoryItemImpl _value,
      $Res Function(_$ReadingHistoryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manga = null,
    Object? chapter = null,
  }) {
    return _then(_$ReadingHistoryItemImpl(
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as Manga,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingHistoryItemImpl implements _ReadingHistoryItem {
  const _$ReadingHistoryItemImpl({required this.manga, required this.chapter});

  factory _$ReadingHistoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingHistoryItemImplFromJson(json);

  @override
  final Manga manga;
  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'ReadingHistoryItem(manga: $manga, chapter: $chapter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingHistoryItemImpl &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.chapter, chapter) || other.chapter == chapter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, manga, chapter);

  /// Create a copy of ReadingHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingHistoryItemImplCopyWith<_$ReadingHistoryItemImpl> get copyWith =>
      __$$ReadingHistoryItemImplCopyWithImpl<_$ReadingHistoryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingHistoryItemImplToJson(
      this,
    );
  }
}

abstract class _ReadingHistoryItem implements ReadingHistoryItem {
  const factory _ReadingHistoryItem(
      {required final Manga manga,
      required final Chapter chapter}) = _$ReadingHistoryItemImpl;

  factory _ReadingHistoryItem.fromJson(Map<String, dynamic> json) =
      _$ReadingHistoryItemImpl.fromJson;

  @override
  Manga get manga;
  @override
  Chapter get chapter;

  /// Create a copy of ReadingHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingHistoryItemImplCopyWith<_$ReadingHistoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
