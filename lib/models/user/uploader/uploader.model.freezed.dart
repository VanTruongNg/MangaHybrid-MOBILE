// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploader.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Uploader _$UploaderFromJson(Map<String, dynamic> json) {
  return _Uploader.fromJson(json);
}

/// @nodoc
mixin _$Uploader {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Uploader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploaderCopyWith<Uploader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploaderCopyWith<$Res> {
  factory $UploaderCopyWith(Uploader value, $Res Function(Uploader) then) =
      _$UploaderCopyWithImpl<$Res, Uploader>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class _$UploaderCopyWithImpl<$Res, $Val extends Uploader>
    implements $UploaderCopyWith<$Res> {
  _$UploaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Uploader
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
abstract class _$$UploaderImplCopyWith<$Res>
    implements $UploaderCopyWith<$Res> {
  factory _$$UploaderImplCopyWith(
          _$UploaderImpl value, $Res Function(_$UploaderImpl) then) =
      __$$UploaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class __$$UploaderImplCopyWithImpl<$Res>
    extends _$UploaderCopyWithImpl<$Res, _$UploaderImpl>
    implements _$$UploaderImplCopyWith<$Res> {
  __$$UploaderImplCopyWithImpl(
      _$UploaderImpl _value, $Res Function(_$UploaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$UploaderImpl(
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
class _$UploaderImpl implements _Uploader {
  const _$UploaderImpl(
      {@JsonKey(name: '_id') required this.id, required this.name});

  factory _$UploaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploaderImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Uploader(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploaderImplCopyWith<_$UploaderImpl> get copyWith =>
      __$$UploaderImplCopyWithImpl<_$UploaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploaderImplToJson(
      this,
    );
  }
}

abstract class _Uploader implements Uploader {
  const factory _Uploader(
      {@JsonKey(name: '_id') required final String id,
      required final String name}) = _$UploaderImpl;

  factory _Uploader.fromJson(Map<String, dynamic> json) =
      _$UploaderImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploaderImplCopyWith<_$UploaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
