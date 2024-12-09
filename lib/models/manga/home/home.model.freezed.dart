// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  List<MangaItem> get dailyTop => throw _privateConstructorUsedError;
  List<MangaItem> get weeklyTop => throw _privateConstructorUsedError;
  List<MangaItem> get recentUpdated => throw _privateConstructorUsedError;
  List<MangaItem> get randomManga => throw _privateConstructorUsedError;
  List<MangaItem> get topAllTime => throw _privateConstructorUsedError;

  /// Serializes this HomeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
  @useResult
  $Res call(
      {List<MangaItem> dailyTop,
      List<MangaItem> weeklyTop,
      List<MangaItem> recentUpdated,
      List<MangaItem> randomManga,
      List<MangaItem> topAllTime});
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyTop = null,
    Object? weeklyTop = null,
    Object? recentUpdated = null,
    Object? randomManga = null,
    Object? topAllTime = null,
  }) {
    return _then(_value.copyWith(
      dailyTop: null == dailyTop
          ? _value.dailyTop
          : dailyTop // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      weeklyTop: null == weeklyTop
          ? _value.weeklyTop
          : weeklyTop // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      recentUpdated: null == recentUpdated
          ? _value.recentUpdated
          : recentUpdated // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      randomManga: null == randomManga
          ? _value.randomManga
          : randomManga // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      topAllTime: null == topAllTime
          ? _value.topAllTime
          : topAllTime // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeResponseImplCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$HomeResponseImplCopyWith(
          _$HomeResponseImpl value, $Res Function(_$HomeResponseImpl) then) =
      __$$HomeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MangaItem> dailyTop,
      List<MangaItem> weeklyTop,
      List<MangaItem> recentUpdated,
      List<MangaItem> randomManga,
      List<MangaItem> topAllTime});
}

/// @nodoc
class __$$HomeResponseImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseImpl>
    implements _$$HomeResponseImplCopyWith<$Res> {
  __$$HomeResponseImplCopyWithImpl(
      _$HomeResponseImpl _value, $Res Function(_$HomeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyTop = null,
    Object? weeklyTop = null,
    Object? recentUpdated = null,
    Object? randomManga = null,
    Object? topAllTime = null,
  }) {
    return _then(_$HomeResponseImpl(
      dailyTop: null == dailyTop
          ? _value._dailyTop
          : dailyTop // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      weeklyTop: null == weeklyTop
          ? _value._weeklyTop
          : weeklyTop // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      recentUpdated: null == recentUpdated
          ? _value._recentUpdated
          : recentUpdated // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      randomManga: null == randomManga
          ? _value._randomManga
          : randomManga // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
      topAllTime: null == topAllTime
          ? _value._topAllTime
          : topAllTime // ignore: cast_nullable_to_non_nullable
              as List<MangaItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseImpl implements _HomeResponse {
  const _$HomeResponseImpl(
      {required final List<MangaItem> dailyTop,
      required final List<MangaItem> weeklyTop,
      required final List<MangaItem> recentUpdated,
      required final List<MangaItem> randomManga,
      required final List<MangaItem> topAllTime})
      : _dailyTop = dailyTop,
        _weeklyTop = weeklyTop,
        _recentUpdated = recentUpdated,
        _randomManga = randomManga,
        _topAllTime = topAllTime;

  factory _$HomeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseImplFromJson(json);

  final List<MangaItem> _dailyTop;
  @override
  List<MangaItem> get dailyTop {
    if (_dailyTop is EqualUnmodifiableListView) return _dailyTop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyTop);
  }

  final List<MangaItem> _weeklyTop;
  @override
  List<MangaItem> get weeklyTop {
    if (_weeklyTop is EqualUnmodifiableListView) return _weeklyTop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyTop);
  }

  final List<MangaItem> _recentUpdated;
  @override
  List<MangaItem> get recentUpdated {
    if (_recentUpdated is EqualUnmodifiableListView) return _recentUpdated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentUpdated);
  }

  final List<MangaItem> _randomManga;
  @override
  List<MangaItem> get randomManga {
    if (_randomManga is EqualUnmodifiableListView) return _randomManga;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_randomManga);
  }

  final List<MangaItem> _topAllTime;
  @override
  List<MangaItem> get topAllTime {
    if (_topAllTime is EqualUnmodifiableListView) return _topAllTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topAllTime);
  }

  @override
  String toString() {
    return 'HomeResponse(dailyTop: $dailyTop, weeklyTop: $weeklyTop, recentUpdated: $recentUpdated, randomManga: $randomManga, topAllTime: $topAllTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseImpl &&
            const DeepCollectionEquality().equals(other._dailyTop, _dailyTop) &&
            const DeepCollectionEquality()
                .equals(other._weeklyTop, _weeklyTop) &&
            const DeepCollectionEquality()
                .equals(other._recentUpdated, _recentUpdated) &&
            const DeepCollectionEquality()
                .equals(other._randomManga, _randomManga) &&
            const DeepCollectionEquality()
                .equals(other._topAllTime, _topAllTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dailyTop),
      const DeepCollectionEquality().hash(_weeklyTop),
      const DeepCollectionEquality().hash(_recentUpdated),
      const DeepCollectionEquality().hash(_randomManga),
      const DeepCollectionEquality().hash(_topAllTime));

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      __$$HomeResponseImplCopyWithImpl<_$HomeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeResponse implements HomeResponse {
  const factory _HomeResponse(
      {required final List<MangaItem> dailyTop,
      required final List<MangaItem> weeklyTop,
      required final List<MangaItem> recentUpdated,
      required final List<MangaItem> randomManga,
      required final List<MangaItem> topAllTime}) = _$HomeResponseImpl;

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$HomeResponseImpl.fromJson;

  @override
  List<MangaItem> get dailyTop;
  @override
  List<MangaItem> get weeklyTop;
  @override
  List<MangaItem> get recentUpdated;
  @override
  List<MangaItem> get randomManga;
  @override
  List<MangaItem> get topAllTime;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaItem _$MangaItemFromJson(Map<String, dynamic> json) {
  return _MangaItem.fromJson(json);
}

/// @nodoc
mixin _$MangaItem {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get coverImg => throw _privateConstructorUsedError;
  String? get bannerImg => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get view => throw _privateConstructorUsedError;
  int? get dailyView => throw _privateConstructorUsedError;
  int? get weeklyView => throw _privateConstructorUsedError;
  DateTime? get latestUpdate => throw _privateConstructorUsedError;

  /// Serializes this MangaItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaItemCopyWith<MangaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaItemCopyWith<$Res> {
  factory $MangaItemCopyWith(MangaItem value, $Res Function(MangaItem) then) =
      _$MangaItemCopyWithImpl<$Res, MangaItem>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String? coverImg,
      String? bannerImg,
      String author,
      double rating,
      int view,
      int? dailyView,
      int? weeklyView,
      DateTime? latestUpdate});
}

/// @nodoc
class _$MangaItemCopyWithImpl<$Res, $Val extends MangaItem>
    implements $MangaItemCopyWith<$Res> {
  _$MangaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? coverImg = freezed,
    Object? bannerImg = freezed,
    Object? author = null,
    Object? rating = null,
    Object? view = null,
    Object? dailyView = freezed,
    Object? weeklyView = freezed,
    Object? latestUpdate = freezed,
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
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImg: freezed == bannerImg
          ? _value.bannerImg
          : bannerImg // ignore: cast_nullable_to_non_nullable
              as String?,
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
      dailyView: freezed == dailyView
          ? _value.dailyView
          : dailyView // ignore: cast_nullable_to_non_nullable
              as int?,
      weeklyView: freezed == weeklyView
          ? _value.weeklyView
          : weeklyView // ignore: cast_nullable_to_non_nullable
              as int?,
      latestUpdate: freezed == latestUpdate
          ? _value.latestUpdate
          : latestUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaItemImplCopyWith<$Res>
    implements $MangaItemCopyWith<$Res> {
  factory _$$MangaItemImplCopyWith(
          _$MangaItemImpl value, $Res Function(_$MangaItemImpl) then) =
      __$$MangaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String? coverImg,
      String? bannerImg,
      String author,
      double rating,
      int view,
      int? dailyView,
      int? weeklyView,
      DateTime? latestUpdate});
}

/// @nodoc
class __$$MangaItemImplCopyWithImpl<$Res>
    extends _$MangaItemCopyWithImpl<$Res, _$MangaItemImpl>
    implements _$$MangaItemImplCopyWith<$Res> {
  __$$MangaItemImplCopyWithImpl(
      _$MangaItemImpl _value, $Res Function(_$MangaItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? coverImg = freezed,
    Object? bannerImg = freezed,
    Object? author = null,
    Object? rating = null,
    Object? view = null,
    Object? dailyView = freezed,
    Object? weeklyView = freezed,
    Object? latestUpdate = freezed,
  }) {
    return _then(_$MangaItemImpl(
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
      coverImg: freezed == coverImg
          ? _value.coverImg
          : coverImg // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImg: freezed == bannerImg
          ? _value.bannerImg
          : bannerImg // ignore: cast_nullable_to_non_nullable
              as String?,
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
      dailyView: freezed == dailyView
          ? _value.dailyView
          : dailyView // ignore: cast_nullable_to_non_nullable
              as int?,
      weeklyView: freezed == weeklyView
          ? _value.weeklyView
          : weeklyView // ignore: cast_nullable_to_non_nullable
              as int?,
      latestUpdate: freezed == latestUpdate
          ? _value.latestUpdate
          : latestUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaItemImpl implements _MangaItem {
  const _$MangaItemImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.description,
      this.coverImg,
      this.bannerImg,
      required this.author,
      this.rating = 0,
      this.view = 0,
      this.dailyView,
      this.weeklyView,
      this.latestUpdate});

  factory _$MangaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaItemImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? coverImg;
  @override
  final String? bannerImg;
  @override
  final String author;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int view;
  @override
  final int? dailyView;
  @override
  final int? weeklyView;
  @override
  final DateTime? latestUpdate;

  @override
  String toString() {
    return 'MangaItem(id: $id, title: $title, description: $description, coverImg: $coverImg, bannerImg: $bannerImg, author: $author, rating: $rating, view: $view, dailyView: $dailyView, weeklyView: $weeklyView, latestUpdate: $latestUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImg, coverImg) ||
                other.coverImg == coverImg) &&
            (identical(other.bannerImg, bannerImg) ||
                other.bannerImg == bannerImg) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.dailyView, dailyView) ||
                other.dailyView == dailyView) &&
            (identical(other.weeklyView, weeklyView) ||
                other.weeklyView == weeklyView) &&
            (identical(other.latestUpdate, latestUpdate) ||
                other.latestUpdate == latestUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, coverImg,
      bannerImg, author, rating, view, dailyView, weeklyView, latestUpdate);

  /// Create a copy of MangaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaItemImplCopyWith<_$MangaItemImpl> get copyWith =>
      __$$MangaItemImplCopyWithImpl<_$MangaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaItemImplToJson(
      this,
    );
  }
}

abstract class _MangaItem implements MangaItem {
  const factory _MangaItem(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String description,
      final String? coverImg,
      final String? bannerImg,
      required final String author,
      final double rating,
      final int view,
      final int? dailyView,
      final int? weeklyView,
      final DateTime? latestUpdate}) = _$MangaItemImpl;

  factory _MangaItem.fromJson(Map<String, dynamic> json) =
      _$MangaItemImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get coverImg;
  @override
  String? get bannerImg;
  @override
  String get author;
  @override
  double get rating;
  @override
  int get view;
  @override
  int? get dailyView;
  @override
  int? get weeklyView;
  @override
  DateTime? get latestUpdate;

  /// Create a copy of MangaItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaItemImplCopyWith<_$MangaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
