// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_brushing_stats_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserBrushingStatsRequest _$GetUserBrushingStatsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetUserBrushingStatsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetUserBrushingStatsRequest {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_space')
  String get timeSpace => throw _privateConstructorUsedError;
  @JsonKey(name: 'need_base_line_data')
  bool get needBaseLineData => throw _privateConstructorUsedError;

  /// Serializes this GetUserBrushingStatsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUserBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserBrushingStatsRequestCopyWith<GetUserBrushingStatsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserBrushingStatsRequestCopyWith<$Res> {
  factory $GetUserBrushingStatsRequestCopyWith(
          GetUserBrushingStatsRequest value,
          $Res Function(GetUserBrushingStatsRequest) then) =
      _$GetUserBrushingStatsRequestCopyWithImpl<$Res,
          GetUserBrushingStatsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_space') String timeSpace,
      @JsonKey(name: 'need_base_line_data') bool needBaseLineData});
}

/// @nodoc
class _$GetUserBrushingStatsRequestCopyWithImpl<$Res,
        $Val extends GetUserBrushingStatsRequest>
    implements $GetUserBrushingStatsRequestCopyWith<$Res> {
  _$GetUserBrushingStatsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeSpace = null,
    Object? needBaseLineData = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      needBaseLineData: null == needBaseLineData
          ? _value.needBaseLineData
          : needBaseLineData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserBrushingStatsRequestImplCopyWith<$Res>
    implements $GetUserBrushingStatsRequestCopyWith<$Res> {
  factory _$$GetUserBrushingStatsRequestImplCopyWith(
          _$GetUserBrushingStatsRequestImpl value,
          $Res Function(_$GetUserBrushingStatsRequestImpl) then) =
      __$$GetUserBrushingStatsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_space') String timeSpace,
      @JsonKey(name: 'need_base_line_data') bool needBaseLineData});
}

/// @nodoc
class __$$GetUserBrushingStatsRequestImplCopyWithImpl<$Res>
    extends _$GetUserBrushingStatsRequestCopyWithImpl<$Res,
        _$GetUserBrushingStatsRequestImpl>
    implements _$$GetUserBrushingStatsRequestImplCopyWith<$Res> {
  __$$GetUserBrushingStatsRequestImplCopyWithImpl(
      _$GetUserBrushingStatsRequestImpl _value,
      $Res Function(_$GetUserBrushingStatsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeSpace = null,
    Object? needBaseLineData = null,
  }) {
    return _then(_$GetUserBrushingStatsRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      needBaseLineData: null == needBaseLineData
          ? _value.needBaseLineData
          : needBaseLineData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserBrushingStatsRequestImpl
    implements _GetUserBrushingStatsRequest {
  const _$GetUserBrushingStatsRequestImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'time_space') required this.timeSpace,
      @JsonKey(name: 'need_base_line_data') required this.needBaseLineData});

  factory _$GetUserBrushingStatsRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetUserBrushingStatsRequestImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'time_space')
  final String timeSpace;
  @override
  @JsonKey(name: 'need_base_line_data')
  final bool needBaseLineData;

  @override
  String toString() {
    return 'GetUserBrushingStatsRequest(userId: $userId, startDate: $startDate, endDate: $endDate, timeSpace: $timeSpace, needBaseLineData: $needBaseLineData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserBrushingStatsRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.timeSpace, timeSpace) ||
                other.timeSpace == timeSpace) &&
            (identical(other.needBaseLineData, needBaseLineData) ||
                other.needBaseLineData == needBaseLineData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, startDate, endDate, timeSpace, needBaseLineData);

  /// Create a copy of GetUserBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserBrushingStatsRequestImplCopyWith<_$GetUserBrushingStatsRequestImpl>
      get copyWith => __$$GetUserBrushingStatsRequestImplCopyWithImpl<
          _$GetUserBrushingStatsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserBrushingStatsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetUserBrushingStatsRequest
    implements GetUserBrushingStatsRequest {
  const factory _GetUserBrushingStatsRequest(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          @JsonKey(name: 'time_space') required final String timeSpace,
          @JsonKey(name: 'need_base_line_data')
          required final bool needBaseLineData}) =
      _$GetUserBrushingStatsRequestImpl;

  factory _GetUserBrushingStatsRequest.fromJson(Map<String, dynamic> json) =
      _$GetUserBrushingStatsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'time_space')
  String get timeSpace;
  @override
  @JsonKey(name: 'need_base_line_data')
  bool get needBaseLineData;

  /// Create a copy of GetUserBrushingStatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserBrushingStatsRequestImplCopyWith<_$GetUserBrushingStatsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
