// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_group_brushing_stats_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetGroupBrushingStatsRequest _$GetGroupBrushingStatsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetGroupBrushingStatsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetGroupBrushingStatsRequest {
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError; // ISO8601 格式
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError; // ISO8601 格式
  @JsonKey(name: 'time_space')
  String get timeSpace => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: 'need_base_line_data')
  bool get needBaseLineData => throw _privateConstructorUsedError;

  /// Serializes this GetGroupBrushingStatsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetGroupBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetGroupBrushingStatsRequestCopyWith<GetGroupBrushingStatsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGroupBrushingStatsRequestCopyWith<$Res> {
  factory $GetGroupBrushingStatsRequestCopyWith(
          GetGroupBrushingStatsRequest value,
          $Res Function(GetGroupBrushingStatsRequest) then) =
      _$GetGroupBrushingStatsRequestCopyWithImpl<$Res,
          GetGroupBrushingStatsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_space') String timeSpace,
      @JsonKey(name: 'time_zone') String timeZone,
      @JsonKey(name: 'need_base_line_data') bool needBaseLineData});
}

/// @nodoc
class _$GetGroupBrushingStatsRequestCopyWithImpl<$Res,
        $Val extends GetGroupBrushingStatsRequest>
    implements $GetGroupBrushingStatsRequestCopyWith<$Res> {
  _$GetGroupBrushingStatsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetGroupBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeSpace = null,
    Object? timeZone = null,
    Object? needBaseLineData = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      timeSpace: null == timeSpace
          ? _value.timeSpace
          : timeSpace // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      needBaseLineData: null == needBaseLineData
          ? _value.needBaseLineData
          : needBaseLineData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetGroupBrushingStatsRequestImplCopyWith<$Res>
    implements $GetGroupBrushingStatsRequestCopyWith<$Res> {
  factory _$$GetGroupBrushingStatsRequestImplCopyWith(
          _$GetGroupBrushingStatsRequestImpl value,
          $Res Function(_$GetGroupBrushingStatsRequestImpl) then) =
      __$$GetGroupBrushingStatsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_space') String timeSpace,
      @JsonKey(name: 'time_zone') String timeZone,
      @JsonKey(name: 'need_base_line_data') bool needBaseLineData});
}

/// @nodoc
class __$$GetGroupBrushingStatsRequestImplCopyWithImpl<$Res>
    extends _$GetGroupBrushingStatsRequestCopyWithImpl<$Res,
        _$GetGroupBrushingStatsRequestImpl>
    implements _$$GetGroupBrushingStatsRequestImplCopyWith<$Res> {
  __$$GetGroupBrushingStatsRequestImplCopyWithImpl(
      _$GetGroupBrushingStatsRequestImpl _value,
      $Res Function(_$GetGroupBrushingStatsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetGroupBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeSpace = null,
    Object? timeZone = null,
    Object? needBaseLineData = null,
  }) {
    return _then(_$GetGroupBrushingStatsRequestImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      timeSpace: null == timeSpace
          ? _value.timeSpace
          : timeSpace // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      needBaseLineData: null == needBaseLineData
          ? _value.needBaseLineData
          : needBaseLineData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetGroupBrushingStatsRequestImpl
    implements _GetGroupBrushingStatsRequest {
  const _$GetGroupBrushingStatsRequestImpl(
      {@JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'time_space') required this.timeSpace,
      @JsonKey(name: 'time_zone') required this.timeZone,
      @JsonKey(name: 'need_base_line_data') this.needBaseLineData = true});

  factory _$GetGroupBrushingStatsRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetGroupBrushingStatsRequestImplFromJson(json);

  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
// ISO8601 格式
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
// ISO8601 格式
  @override
  @JsonKey(name: 'time_space')
  final String timeSpace;
  @override
  @JsonKey(name: 'time_zone')
  final String timeZone;
  @override
  @JsonKey(name: 'need_base_line_data')
  final bool needBaseLineData;

  @override
  String toString() {
    return 'GetGroupBrushingStatsRequest(groupId: $groupId, startDate: $startDate, endDate: $endDate, timeSpace: $timeSpace, timeZone: $timeZone, needBaseLineData: $needBaseLineData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroupBrushingStatsRequestImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.timeSpace, timeSpace) ||
                other.timeSpace == timeSpace) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.needBaseLineData, needBaseLineData) ||
                other.needBaseLineData == needBaseLineData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, startDate, endDate,
      timeSpace, timeZone, needBaseLineData);

  /// Create a copy of GetGroupBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroupBrushingStatsRequestImplCopyWith<
          _$GetGroupBrushingStatsRequestImpl>
      get copyWith => __$$GetGroupBrushingStatsRequestImplCopyWithImpl<
          _$GetGroupBrushingStatsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetGroupBrushingStatsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetGroupBrushingStatsRequest
    implements GetGroupBrushingStatsRequest {
  const factory _GetGroupBrushingStatsRequest(
          {@JsonKey(name: 'group_id') required final String groupId,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          @JsonKey(name: 'time_space') required final String timeSpace,
          @JsonKey(name: 'time_zone') required final String timeZone,
          @JsonKey(name: 'need_base_line_data') final bool needBaseLineData}) =
      _$GetGroupBrushingStatsRequestImpl;

  factory _GetGroupBrushingStatsRequest.fromJson(Map<String, dynamic> json) =
      _$GetGroupBrushingStatsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  @JsonKey(name: 'start_date')
  String get startDate; // ISO8601 格式
  @override
  @JsonKey(name: 'end_date')
  String get endDate; // ISO8601 格式
  @override
  @JsonKey(name: 'time_space')
  String get timeSpace;
  @override
  @JsonKey(name: 'time_zone')
  String get timeZone;
  @override
  @JsonKey(name: 'need_base_line_data')
  bool get needBaseLineData;

  /// Create a copy of GetGroupBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetGroupBrushingStatsRequestImplCopyWith<
          _$GetGroupBrushingStatsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
