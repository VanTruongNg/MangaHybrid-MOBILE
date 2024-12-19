// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_chapter.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfflineChapter _$OfflineChapterFromJson(Map<String, dynamic> json) {
  return _OfflineChapter.fromJson(json);
}

/// @nodoc
mixin _$OfflineChapter {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get mangaId => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<String> get pagePaths => throw _privateConstructorUsedError;

  /// Serializes this OfflineChapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfflineChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfflineChapterCopyWith<OfflineChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineChapterCopyWith<$Res> {
  factory $OfflineChapterCopyWith(
          OfflineChapter value, $Res Function(OfflineChapter) then) =
      _$OfflineChapterCopyWithImpl<$Res, OfflineChapter>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String mangaId,
      int number,
      String title,
      String type,
      int totalPages,
      List<String> pagePaths});
}

/// @nodoc
class _$OfflineChapterCopyWithImpl<$Res, $Val extends OfflineChapter>
    implements $OfflineChapterCopyWith<$Res> {
  _$OfflineChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfflineChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mangaId = null,
    Object? number = null,
    Object? title = null,
    Object? type = null,
    Object? totalPages = null,
    Object? pagePaths = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      pagePaths: null == pagePaths
          ? _value.pagePaths
          : pagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfflineChapterImplCopyWith<$Res>
    implements $OfflineChapterCopyWith<$Res> {
  factory _$$OfflineChapterImplCopyWith(_$OfflineChapterImpl value,
          $Res Function(_$OfflineChapterImpl) then) =
      __$$OfflineChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String mangaId,
      int number,
      String title,
      String type,
      int totalPages,
      List<String> pagePaths});
}

/// @nodoc
class __$$OfflineChapterImplCopyWithImpl<$Res>
    extends _$OfflineChapterCopyWithImpl<$Res, _$OfflineChapterImpl>
    implements _$$OfflineChapterImplCopyWith<$Res> {
  __$$OfflineChapterImplCopyWithImpl(
      _$OfflineChapterImpl _value, $Res Function(_$OfflineChapterImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfflineChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mangaId = null,
    Object? number = null,
    Object? title = null,
    Object? type = null,
    Object? totalPages = null,
    Object? pagePaths = null,
  }) {
    return _then(_$OfflineChapterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      pagePaths: null == pagePaths
          ? _value._pagePaths
          : pagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfflineChapterImpl implements _OfflineChapter {
  const _$OfflineChapterImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.mangaId,
      required this.number,
      this.title = '',
      this.type = 'normal',
      required this.totalPages,
      required final List<String> pagePaths})
      : _pagePaths = pagePaths;

  factory _$OfflineChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineChapterImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String mangaId;
  @override
  final int number;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String type;
  @override
  final int totalPages;
  final List<String> _pagePaths;
  @override
  List<String> get pagePaths {
    if (_pagePaths is EqualUnmodifiableListView) return _pagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pagePaths);
  }

  @override
  String toString() {
    return 'OfflineChapter(id: $id, mangaId: $mangaId, number: $number, title: $title, type: $type, totalPages: $totalPages, pagePaths: $pagePaths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mangaId, mangaId) || other.mangaId == mangaId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality()
                .equals(other._pagePaths, _pagePaths));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, mangaId, number, title, type,
      totalPages, const DeepCollectionEquality().hash(_pagePaths));

  /// Create a copy of OfflineChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineChapterImplCopyWith<_$OfflineChapterImpl> get copyWith =>
      __$$OfflineChapterImplCopyWithImpl<_$OfflineChapterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineChapterImplToJson(
      this,
    );
  }
}

abstract class _OfflineChapter implements OfflineChapter {
  const factory _OfflineChapter(
      {@JsonKey(name: '_id') required final String id,
      required final String mangaId,
      required final int number,
      final String title,
      final String type,
      required final int totalPages,
      required final List<String> pagePaths}) = _$OfflineChapterImpl;

  factory _OfflineChapter.fromJson(Map<String, dynamic> json) =
      _$OfflineChapterImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get mangaId;
  @override
  int get number;
  @override
  String get title;
  @override
  String get type;
  @override
  int get totalPages;
  @override
  List<String> get pagePaths;

  /// Create a copy of OfflineChapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfflineChapterImplCopyWith<_$OfflineChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
