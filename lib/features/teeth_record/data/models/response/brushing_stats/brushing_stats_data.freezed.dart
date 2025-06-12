// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brushing_stats_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrushingStatsData _$BrushingStatsDataFromJson(Map<String, dynamic> json) {
  return _BrushingStatsData.fromJson(json);
}

/// @nodoc
mixin _$BrushingStatsData {
  @JsonKey(name: 'time_group')
  DateTime get timeGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  double get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_value')
  double get baseValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_count')
  int get baseCount => throw _privateConstructorUsedError;

  /// Serializes this BrushingStatsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrushingStatsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrushingStatsDataCopyWith<BrushingStatsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrushingStatsDataCopyWith<$Res> {
  factory $BrushingStatsDataCopyWith(
          BrushingStatsData value, $Res Function(BrushingStatsData) then) =
      _$BrushingStatsDataCopyWithImpl<$Res, BrushingStatsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time_group') DateTime timeGroup,
      @JsonKey(name: 'value') double value,
      @JsonKey(name: 'base_value') double baseValue,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'base_count') int baseCount});
}

/// @nodoc
class _$BrushingStatsDataCopyWithImpl<$Res, $Val extends BrushingStatsData>
    implements $BrushingStatsDataCopyWith<$Res> {
  _$BrushingStatsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrushingStatsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeGroup = null,
    Object? value = null,
    Object? baseValue = null,
    Object? count = null,
    Object? baseCount = null,
  }) {
    return _then(_value.copyWith(
      timeGroup: null == timeGroup
          ? _value.timeGroup
          : timeGroup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      baseValue: null == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      baseCount: null == baseCount
          ? _value.baseCount
          : baseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrushingStatsDataImplCopyWith<$Res>
    implements $BrushingStatsDataCopyWith<$Res> {
  factory _$$BrushingStatsDataImplCopyWith(_$BrushingStatsDataImpl value,
          $Res Function(_$BrushingStatsDataImpl) then) =
      __$$BrushingStatsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time_group') DateTime timeGroup,
      @JsonKey(name: 'value') double value,
      @JsonKey(name: 'base_value') double baseValue,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'base_count') int baseCount});
}

/// @nodoc
class __$$BrushingStatsDataImplCopyWithImpl<$Res>
    extends _$BrushingStatsDataCopyWithImpl<$Res, _$BrushingStatsDataImpl>
    implements _$$BrushingStatsDataImplCopyWith<$Res> {
  __$$BrushingStatsDataImplCopyWithImpl(_$BrushingStatsDataImpl _value,
      $Res Function(_$BrushingStatsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrushingStatsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeGroup = null,
    Object? value = null,
    Object? baseValue = null,
    Object? count = null,
    Object? baseCount = null,
  }) {
    return _then(_$BrushingStatsDataImpl(
      timeGroup: null == timeGroup
          ? _value.timeGroup
          : timeGroup // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      baseValue: null == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      baseCount: null == baseCount
          ? _value.baseCount
          : baseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrushingStatsDataImpl implements _BrushingStatsData {
  const _$BrushingStatsDataImpl(
      {@JsonKey(name: 'time_group') required this.timeGroup,
      @JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'base_value') required this.baseValue,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'base_count') required this.baseCount});

  factory _$BrushingStatsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrushingStatsDataImplFromJson(json);

  @override
  @JsonKey(name: 'time_group')
  final DateTime timeGroup;
  @override
  @JsonKey(name: 'value')
  final double value;
  @override
  @JsonKey(name: 'base_value')
  final double baseValue;
  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'base_count')
  final int baseCount;

  @override
  String toString() {
    return 'BrushingStatsData(timeGroup: $timeGroup, value: $value, baseValue: $baseValue, count: $count, baseCount: $baseCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrushingStatsDataImpl &&
            (identical(other.timeGroup, timeGroup) ||
                other.timeGroup == timeGroup) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.baseValue, baseValue) ||
                other.baseValue == baseValue) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.baseCount, baseCount) ||
                other.baseCount == baseCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timeGroup, value, baseValue, count, baseCount);

  /// Create a copy of BrushingStatsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrushingStatsDataImplCopyWith<_$BrushingStatsDataImpl> get copyWith =>
      __$$BrushingStatsDataImplCopyWithImpl<_$BrushingStatsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrushingStatsDataImplToJson(
      this,
    );
  }
}

abstract class _BrushingStatsData implements BrushingStatsData {
  const factory _BrushingStatsData(
          {@JsonKey(name: 'time_group') required final DateTime timeGroup,
          @JsonKey(name: 'value') required final double value,
          @JsonKey(name: 'base_value') required final double baseValue,
          @JsonKey(name: 'count') required final int count,
          @JsonKey(name: 'base_count') required final int baseCount}) =
      _$BrushingStatsDataImpl;

  factory _BrushingStatsData.fromJson(Map<String, dynamic> json) =
      _$BrushingStatsDataImpl.fromJson;

  @override
  @JsonKey(name: 'time_group')
  DateTime get timeGroup;
  @override
  @JsonKey(name: 'value')
  double get value;
  @override
  @JsonKey(name: 'base_value')
  double get baseValue;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'base_count')
  int get baseCount;

  /// Create a copy of BrushingStatsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrushingStatsDataImplCopyWith<_$BrushingStatsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
