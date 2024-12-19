// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_profile.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PublicProfile _$PublicProfileFromJson(Map<String, dynamic> json) {
  return _PublicProfile.fromJson(json);
}

/// @nodoc
mixin _$PublicProfile {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  List<UserBasic> get followers => throw _privateConstructorUsedError;
  List<UserBasic> get following => throw _privateConstructorUsedError;
  List<MangaBasic> get uploadedManga => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PublicProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicProfileCopyWith<PublicProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProfileCopyWith<$Res> {
  factory $PublicProfileCopyWith(
          PublicProfile value, $Res Function(PublicProfile) then) =
      _$PublicProfileCopyWithImpl<$Res, PublicProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String? avatarUrl,
      List<UserBasic> followers,
      List<UserBasic> following,
      List<MangaBasic> uploadedManga,
      String? createdAt});
}

/// @nodoc
class _$PublicProfileCopyWithImpl<$Res, $Val extends PublicProfile>
    implements $PublicProfileCopyWith<$Res> {
  _$PublicProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
    Object? followers = null,
    Object? following = null,
    Object? uploadedManga = null,
    Object? createdAt = freezed,
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
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserBasic>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserBasic>,
      uploadedManga: null == uploadedManga
          ? _value.uploadedManga
          : uploadedManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicProfileImplCopyWith<$Res>
    implements $PublicProfileCopyWith<$Res> {
  factory _$$PublicProfileImplCopyWith(
          _$PublicProfileImpl value, $Res Function(_$PublicProfileImpl) then) =
      __$$PublicProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String? avatarUrl,
      List<UserBasic> followers,
      List<UserBasic> following,
      List<MangaBasic> uploadedManga,
      String? createdAt});
}

/// @nodoc
class __$$PublicProfileImplCopyWithImpl<$Res>
    extends _$PublicProfileCopyWithImpl<$Res, _$PublicProfileImpl>
    implements _$$PublicProfileImplCopyWith<$Res> {
  __$$PublicProfileImplCopyWithImpl(
      _$PublicProfileImpl _value, $Res Function(_$PublicProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
    Object? followers = null,
    Object? following = null,
    Object? uploadedManga = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$PublicProfileImpl(
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
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserBasic>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserBasic>,
      uploadedManga: null == uploadedManga
          ? _value._uploadedManga
          : uploadedManga // ignore: cast_nullable_to_non_nullable
              as List<MangaBasic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicProfileImpl implements _PublicProfile {
  const _$PublicProfileImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.avatarUrl,
      final List<UserBasic> followers = const [],
      final List<UserBasic> following = const [],
      final List<MangaBasic> uploadedManga = const [],
      this.createdAt})
      : _followers = followers,
        _following = following,
        _uploadedManga = uploadedManga;

  factory _$PublicProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicProfileImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? avatarUrl;
  final List<UserBasic> _followers;
  @override
  @JsonKey()
  List<UserBasic> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<UserBasic> _following;
  @override
  @JsonKey()
  List<UserBasic> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<MangaBasic> _uploadedManga;
  @override
  @JsonKey()
  List<MangaBasic> get uploadedManga {
    if (_uploadedManga is EqualUnmodifiableListView) return _uploadedManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploadedManga);
  }

  @override
  final String? createdAt;

  @override
  String toString() {
    return 'PublicProfile(id: $id, name: $name, avatarUrl: $avatarUrl, followers: $followers, following: $following, uploadedManga: $uploadedManga, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._uploadedManga, _uploadedManga) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      avatarUrl,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_uploadedManga),
      createdAt);

  /// Create a copy of PublicProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileImplCopyWith<_$PublicProfileImpl> get copyWith =>
      __$$PublicProfileImplCopyWithImpl<_$PublicProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicProfileImplToJson(
      this,
    );
  }
}

abstract class _PublicProfile implements PublicProfile {
  const factory _PublicProfile(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final String? avatarUrl,
      final List<UserBasic> followers,
      final List<UserBasic> following,
      final List<MangaBasic> uploadedManga,
      final String? createdAt}) = _$PublicProfileImpl;

  factory _PublicProfile.fromJson(Map<String, dynamic> json) =
      _$PublicProfileImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get avatarUrl;
  @override
  List<UserBasic> get followers;
  @override
  List<UserBasic> get following;
  @override
  List<MangaBasic> get uploadedManga;
  @override
  String? get createdAt;

  /// Create a copy of PublicProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicProfileImplCopyWith<_$PublicProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBasic _$UserBasicFromJson(Map<String, dynamic> json) {
  return _UserBasic.fromJson(json);
}

/// @nodoc
mixin _$UserBasic {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this UserBasic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBasic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBasicCopyWith<UserBasic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBasicCopyWith<$Res> {
  factory $UserBasicCopyWith(UserBasic value, $Res Function(UserBasic) then) =
      _$UserBasicCopyWithImpl<$Res, UserBasic>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String? avatarUrl});
}

/// @nodoc
class _$UserBasicCopyWithImpl<$Res, $Val extends UserBasic>
    implements $UserBasicCopyWith<$Res> {
  _$UserBasicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBasic
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
abstract class _$$UserBasicImplCopyWith<$Res>
    implements $UserBasicCopyWith<$Res> {
  factory _$$UserBasicImplCopyWith(
          _$UserBasicImpl value, $Res Function(_$UserBasicImpl) then) =
      __$$UserBasicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name, String? avatarUrl});
}

/// @nodoc
class __$$UserBasicImplCopyWithImpl<$Res>
    extends _$UserBasicCopyWithImpl<$Res, _$UserBasicImpl>
    implements _$$UserBasicImplCopyWith<$Res> {
  __$$UserBasicImplCopyWithImpl(
      _$UserBasicImpl _value, $Res Function(_$UserBasicImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBasic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$UserBasicImpl(
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
class _$UserBasicImpl implements _UserBasic {
  const _$UserBasicImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.avatarUrl});

  factory _$UserBasicImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBasicImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'UserBasic(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBasicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  /// Create a copy of UserBasic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBasicImplCopyWith<_$UserBasicImpl> get copyWith =>
      __$$UserBasicImplCopyWithImpl<_$UserBasicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBasicImplToJson(
      this,
    );
  }
}

abstract class _UserBasic implements UserBasic {
  const factory _UserBasic(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final String? avatarUrl}) = _$UserBasicImpl;

  factory _UserBasic.fromJson(Map<String, dynamic> json) =
      _$UserBasicImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get avatarUrl;

  /// Create a copy of UserBasic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBasicImplCopyWith<_$UserBasicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaBasic _$MangaBasicFromJson(Map<String, dynamic> json) {
  return _MangaBasic.fromJson(json);
}

/// @nodoc
mixin _$MangaBasic {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String? get coverImg => throw _privateConstructorUsedError;

  /// Serializes this MangaBasic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaBasic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaBasicCopyWith<MangaBasic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaBasicCopyWith<$Res> {
  factory $MangaBasicCopyWith(
          MangaBasic value, $Res Function(MangaBasic) then) =
      _$MangaBasicCopyWithImpl<$Res, MangaBasic>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String author,
      String? coverImg});
}

/// @nodoc
class _$MangaBasicCopyWithImpl<$Res, $Val extends MangaBasic>
    implements $MangaBasicCopyWith<$Res> {
  _$MangaBasicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaBasic
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
abstract class _$$MangaBasicImplCopyWith<$Res>
    implements $MangaBasicCopyWith<$Res> {
  factory _$$MangaBasicImplCopyWith(
          _$MangaBasicImpl value, $Res Function(_$MangaBasicImpl) then) =
      __$$MangaBasicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String author,
      String? coverImg});
}

/// @nodoc
class __$$MangaBasicImplCopyWithImpl<$Res>
    extends _$MangaBasicCopyWithImpl<$Res, _$MangaBasicImpl>
    implements _$$MangaBasicImplCopyWith<$Res> {
  __$$MangaBasicImplCopyWithImpl(
      _$MangaBasicImpl _value, $Res Function(_$MangaBasicImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaBasic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? coverImg = freezed,
  }) {
    return _then(_$MangaBasicImpl(
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
class _$MangaBasicImpl implements _MangaBasic {
  const _$MangaBasicImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.author,
      this.coverImg});

  factory _$MangaBasicImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaBasicImplFromJson(json);

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
    return 'MangaBasic(id: $id, title: $title, author: $author, coverImg: $coverImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaBasicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, author, coverImg);

  /// Create a copy of MangaBasic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaBasicImplCopyWith<_$MangaBasicImpl> get copyWith =>
      __$$MangaBasicImplCopyWithImpl<_$MangaBasicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaBasicImplToJson(
      this,
    );
  }
}

abstract class _MangaBasic implements MangaBasic {
  const factory _MangaBasic(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String author,
      final String? coverImg}) = _$MangaBasicImpl;

  factory _MangaBasic.fromJson(Map<String, dynamic> json) =
      _$MangaBasicImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String? get coverImg;

  /// Create a copy of MangaBasic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaBasicImplCopyWith<_$MangaBasicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
