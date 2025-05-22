// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analyze_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyzeResultData _$AnalyzeResultDataFromJson(Map<String, dynamic> json) {
  return _AnalyzeResultData.fromJson(json);
}

/// @nodoc
mixin _$AnalyzeResultData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'analyze_path')
  String get analyzePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'score')
  double get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_success')
  int get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'mark')
  String get mark => throw _privateConstructorUsedError;
  @JsonKey(name: 'exec_time')
  String get execTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'teeth_info')
  List<TeethInfo> get teethInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AnalyzeResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyzeResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyzeResultDataCopyWith<AnalyzeResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyzeResultDataCopyWith<$Res> {
  factory $AnalyzeResultDataCopyWith(
          AnalyzeResultData value, $Res Function(AnalyzeResultData) then) =
      _$AnalyzeResultDataCopyWithImpl<$Res, AnalyzeResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'analyze_path') String analyzePath,
      @JsonKey(name: 'score') double score,
      @JsonKey(name: 'is_success') int isSuccess,
      @JsonKey(name: 'mark') String mark,
      @JsonKey(name: 'exec_time') String execTime,
      @JsonKey(name: 'teeth_info') List<TeethInfo> teethInfo,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$AnalyzeResultDataCopyWithImpl<$Res, $Val extends AnalyzeResultData>
    implements $AnalyzeResultDataCopyWith<$Res> {
  _$AnalyzeResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyzeResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? analyzePath = null,
    Object? score = null,
    Object? isSuccess = null,
    Object? mark = null,
    Object? execTime = null,
    Object? teethInfo = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      analyzePath: null == analyzePath
          ? _value.analyzePath
          : analyzePath // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as int,
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String,
      execTime: null == execTime
          ? _value.execTime
          : execTime // ignore: cast_nullable_to_non_nullable
              as String,
      teethInfo: null == teethInfo
          ? _value.teethInfo
          : teethInfo // ignore: cast_nullable_to_non_nullable
              as List<TeethInfo>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyzeResultDataImplCopyWith<$Res>
    implements $AnalyzeResultDataCopyWith<$Res> {
  factory _$$AnalyzeResultDataImplCopyWith(_$AnalyzeResultDataImpl value,
          $Res Function(_$AnalyzeResultDataImpl) then) =
      __$$AnalyzeResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'analyze_path') String analyzePath,
      @JsonKey(name: 'score') double score,
      @JsonKey(name: 'is_success') int isSuccess,
      @JsonKey(name: 'mark') String mark,
      @JsonKey(name: 'exec_time') String execTime,
      @JsonKey(name: 'teeth_info') List<TeethInfo> teethInfo,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$AnalyzeResultDataImplCopyWithImpl<$Res>
    extends _$AnalyzeResultDataCopyWithImpl<$Res, _$AnalyzeResultDataImpl>
    implements _$$AnalyzeResultDataImplCopyWith<$Res> {
  __$$AnalyzeResultDataImplCopyWithImpl(_$AnalyzeResultDataImpl _value,
      $Res Function(_$AnalyzeResultDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyzeResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? analyzePath = null,
    Object? score = null,
    Object? isSuccess = null,
    Object? mark = null,
    Object? execTime = null,
    Object? teethInfo = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$AnalyzeResultDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      analyzePath: null == analyzePath
          ? _value.analyzePath
          : analyzePath // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as int,
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String,
      execTime: null == execTime
          ? _value.execTime
          : execTime // ignore: cast_nullable_to_non_nullable
              as String,
      teethInfo: null == teethInfo
          ? _value._teethInfo
          : teethInfo // ignore: cast_nullable_to_non_nullable
              as List<TeethInfo>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyzeResultDataImpl implements _AnalyzeResultData {
  const _$AnalyzeResultDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'analyze_path') required this.analyzePath,
      @JsonKey(name: 'score') required this.score,
      @JsonKey(name: 'is_success') required this.isSuccess,
      @JsonKey(name: 'mark') required this.mark,
      @JsonKey(name: 'exec_time') required this.execTime,
      @JsonKey(name: 'teeth_info') required final List<TeethInfo> teethInfo,
      @JsonKey(name: 'created_at') this.createdAt})
      : _teethInfo = teethInfo;

  factory _$AnalyzeResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyzeResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'analyze_path')
  final String analyzePath;
  @override
  @JsonKey(name: 'score')
  final double score;
  @override
  @JsonKey(name: 'is_success')
  final int isSuccess;
  @override
  @JsonKey(name: 'mark')
  final String mark;
  @override
  @JsonKey(name: 'exec_time')
  final String execTime;
  final List<TeethInfo> _teethInfo;
  @override
  @JsonKey(name: 'teeth_info')
  List<TeethInfo> get teethInfo {
    if (_teethInfo is EqualUnmodifiableListView) return _teethInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teethInfo);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'AnalyzeResultData(id: $id, analyzePath: $analyzePath, score: $score, isSuccess: $isSuccess, mark: $mark, execTime: $execTime, teethInfo: $teethInfo, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyzeResultDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.analyzePath, analyzePath) ||
                other.analyzePath == analyzePath) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.mark, mark) || other.mark == mark) &&
            (identical(other.execTime, execTime) ||
                other.execTime == execTime) &&
            const DeepCollectionEquality()
                .equals(other._teethInfo, _teethInfo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      analyzePath,
      score,
      isSuccess,
      mark,
      execTime,
      const DeepCollectionEquality().hash(_teethInfo),
      createdAt);

  /// Create a copy of AnalyzeResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyzeResultDataImplCopyWith<_$AnalyzeResultDataImpl> get copyWith =>
      __$$AnalyzeResultDataImplCopyWithImpl<_$AnalyzeResultDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyzeResultDataImplToJson(
      this,
    );
  }
}

abstract class _AnalyzeResultData implements AnalyzeResultData {
  const factory _AnalyzeResultData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'analyze_path') required final String analyzePath,
          @JsonKey(name: 'score') required final double score,
          @JsonKey(name: 'is_success') required final int isSuccess,
          @JsonKey(name: 'mark') required final String mark,
          @JsonKey(name: 'exec_time') required final String execTime,
          @JsonKey(name: 'teeth_info') required final List<TeethInfo> teethInfo,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$AnalyzeResultDataImpl;

  factory _AnalyzeResultData.fromJson(Map<String, dynamic> json) =
      _$AnalyzeResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'analyze_path')
  String get analyzePath;
  @override
  @JsonKey(name: 'score')
  double get score;
  @override
  @JsonKey(name: 'is_success')
  int get isSuccess;
  @override
  @JsonKey(name: 'mark')
  String get mark;
  @override
  @JsonKey(name: 'exec_time')
  String get execTime;
  @override
  @JsonKey(name: 'teeth_info')
  List<TeethInfo> get teethInfo;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of AnalyzeResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyzeResultDataImplCopyWith<_$AnalyzeResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeethInfo _$TeethInfoFromJson(Map<String, dynamic> json) {
  return _TeethInfo.fromJson(json);
}

/// @nodoc
mixin _$TeethInfo {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  int get w => throw _privateConstructorUsedError;
  int get h => throw _privateConstructorUsedError;

  /// Serializes this TeethInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeethInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeethInfoCopyWith<TeethInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeethInfoCopyWith<$Res> {
  factory $TeethInfoCopyWith(TeethInfo value, $Res Function(TeethInfo) then) =
      _$TeethInfoCopyWithImpl<$Res, TeethInfo>;
  @useResult
  $Res call({int x, int y, int w, int h});
}

/// @nodoc
class _$TeethInfoCopyWithImpl<$Res, $Val extends TeethInfo>
    implements $TeethInfoCopyWith<$Res> {
  _$TeethInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeethInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? w = null,
    Object? h = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      w: null == w
          ? _value.w
          : w // ignore: cast_nullable_to_non_nullable
              as int,
      h: null == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeethInfoImplCopyWith<$Res>
    implements $TeethInfoCopyWith<$Res> {
  factory _$$TeethInfoImplCopyWith(
          _$TeethInfoImpl value, $Res Function(_$TeethInfoImpl) then) =
      __$$TeethInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y, int w, int h});
}

/// @nodoc
class __$$TeethInfoImplCopyWithImpl<$Res>
    extends _$TeethInfoCopyWithImpl<$Res, _$TeethInfoImpl>
    implements _$$TeethInfoImplCopyWith<$Res> {
  __$$TeethInfoImplCopyWithImpl(
      _$TeethInfoImpl _value, $Res Function(_$TeethInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeethInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? w = null,
    Object? h = null,
  }) {
    return _then(_$TeethInfoImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      w: null == w
          ? _value.w
          : w // ignore: cast_nullable_to_non_nullable
              as int,
      h: null == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeethInfoImpl implements _TeethInfo {
  const _$TeethInfoImpl(
      {required this.x, required this.y, required this.w, required this.h});

  factory _$TeethInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeethInfoImplFromJson(json);

  @override
  final int x;
  @override
  final int y;
  @override
  final int w;
  @override
  final int h;

  @override
  String toString() {
    return 'TeethInfo(x: $x, y: $y, w: $w, h: $h)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeethInfoImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.w, w) || other.w == w) &&
            (identical(other.h, h) || other.h == h));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, w, h);

  /// Create a copy of TeethInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeethInfoImplCopyWith<_$TeethInfoImpl> get copyWith =>
      __$$TeethInfoImplCopyWithImpl<_$TeethInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeethInfoImplToJson(
      this,
    );
  }
}

abstract class _TeethInfo implements TeethInfo {
  const factory _TeethInfo(
      {required final int x,
      required final int y,
      required final int w,
      required final int h}) = _$TeethInfoImpl;

  factory _TeethInfo.fromJson(Map<String, dynamic> json) =
      _$TeethInfoImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  int get w;
  @override
  int get h;

  /// Create a copy of TeethInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeethInfoImplCopyWith<_$TeethInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
