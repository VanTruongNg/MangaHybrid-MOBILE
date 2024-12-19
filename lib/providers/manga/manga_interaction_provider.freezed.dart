// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_interaction_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MangaInteractionState {
  String get mangaId => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get localLikeCount => throw _privateConstructorUsedError;
  int get localFollowCount => throw _privateConstructorUsedError;

  /// Create a copy of MangaInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaInteractionStateCopyWith<MangaInteractionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaInteractionStateCopyWith<$Res> {
  factory $MangaInteractionStateCopyWith(MangaInteractionState value,
          $Res Function(MangaInteractionState) then) =
      _$MangaInteractionStateCopyWithImpl<$Res, MangaInteractionState>;
  @useResult
  $Res call(
      {String mangaId,
      bool isFollowing,
      bool isLiked,
      bool isLoading,
      int localLikeCount,
      int localFollowCount});
}

/// @nodoc
class _$MangaInteractionStateCopyWithImpl<$Res,
        $Val extends MangaInteractionState>
    implements $MangaInteractionStateCopyWith<$Res> {
  _$MangaInteractionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mangaId = null,
    Object? isFollowing = null,
    Object? isLiked = null,
    Object? isLoading = null,
    Object? localLikeCount = null,
    Object? localFollowCount = null,
  }) {
    return _then(_value.copyWith(
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      localLikeCount: null == localLikeCount
          ? _value.localLikeCount
          : localLikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      localFollowCount: null == localFollowCount
          ? _value.localFollowCount
          : localFollowCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaInteractionStateImplCopyWith<$Res>
    implements $MangaInteractionStateCopyWith<$Res> {
  factory _$$MangaInteractionStateImplCopyWith(
          _$MangaInteractionStateImpl value,
          $Res Function(_$MangaInteractionStateImpl) then) =
      __$$MangaInteractionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mangaId,
      bool isFollowing,
      bool isLiked,
      bool isLoading,
      int localLikeCount,
      int localFollowCount});
}

/// @nodoc
class __$$MangaInteractionStateImplCopyWithImpl<$Res>
    extends _$MangaInteractionStateCopyWithImpl<$Res,
        _$MangaInteractionStateImpl>
    implements _$$MangaInteractionStateImplCopyWith<$Res> {
  __$$MangaInteractionStateImplCopyWithImpl(_$MangaInteractionStateImpl _value,
      $Res Function(_$MangaInteractionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mangaId = null,
    Object? isFollowing = null,
    Object? isLiked = null,
    Object? isLoading = null,
    Object? localLikeCount = null,
    Object? localFollowCount = null,
  }) {
    return _then(_$MangaInteractionStateImpl(
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      localLikeCount: null == localLikeCount
          ? _value.localLikeCount
          : localLikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      localFollowCount: null == localFollowCount
          ? _value.localFollowCount
          : localFollowCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MangaInteractionStateImpl implements _MangaInteractionState {
  const _$MangaInteractionStateImpl(
      {required this.mangaId,
      this.isFollowing = false,
      this.isLiked = false,
      this.isLoading = false,
      required this.localLikeCount,
      required this.localFollowCount});

  @override
  final String mangaId;
  @override
  @JsonKey()
  final bool isFollowing;
  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final int localLikeCount;
  @override
  final int localFollowCount;

  @override
  String toString() {
    return 'MangaInteractionState(mangaId: $mangaId, isFollowing: $isFollowing, isLiked: $isLiked, isLoading: $isLoading, localLikeCount: $localLikeCount, localFollowCount: $localFollowCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaInteractionStateImpl &&
            (identical(other.mangaId, mangaId) || other.mangaId == mangaId) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.localLikeCount, localLikeCount) ||
                other.localLikeCount == localLikeCount) &&
            (identical(other.localFollowCount, localFollowCount) ||
                other.localFollowCount == localFollowCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mangaId, isFollowing, isLiked,
      isLoading, localLikeCount, localFollowCount);

  /// Create a copy of MangaInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaInteractionStateImplCopyWith<_$MangaInteractionStateImpl>
      get copyWith => __$$MangaInteractionStateImplCopyWithImpl<
          _$MangaInteractionStateImpl>(this, _$identity);
}

abstract class _MangaInteractionState implements MangaInteractionState {
  const factory _MangaInteractionState(
      {required final String mangaId,
      final bool isFollowing,
      final bool isLiked,
      final bool isLoading,
      required final int localLikeCount,
      required final int localFollowCount}) = _$MangaInteractionStateImpl;

  @override
  String get mangaId;
  @override
  bool get isFollowing;
  @override
  bool get isLiked;
  @override
  bool get isLoading;
  @override
  int get localLikeCount;
  @override
  int get localFollowCount;

  /// Create a copy of MangaInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaInteractionStateImplCopyWith<_$MangaInteractionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
