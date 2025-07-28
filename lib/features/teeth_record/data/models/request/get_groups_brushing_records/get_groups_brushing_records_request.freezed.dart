// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_groups_brushing_records_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetGroupsBrushingRecordsRequest _$GetGroupsBrushingRecordsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetGroupsBrushingRecordsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetGroupsBrushingRecordsRequest {
  @JsonKey(name: 'group_ids')
  List<String> get groupIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String get timeZone => throw _privateConstructorUsedError;

  /// Serializes this GetGroupsBrushingRecordsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetGroupsBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetGroupsBrushingRecordsRequestCopyWith<GetGroupsBrushingRecordsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGroupsBrushingRecordsRequestCopyWith<$Res> {
  factory $GetGroupsBrushingRecordsRequestCopyWith(
          GetGroupsBrushingRecordsRequest value,
          $Res Function(GetGroupsBrushingRecordsRequest) then) =
      _$GetGroupsBrushingRecordsRequestCopyWithImpl<$Res,
          GetGroupsBrushingRecordsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_ids') List<String> groupIds,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_zone') String timeZone});
}

/// @nodoc
class _$GetGroupsBrushingRecordsRequestCopyWithImpl<$Res,
        $Val extends GetGroupsBrushingRecordsRequest>
    implements $GetGroupsBrushingRecordsRequestCopyWith<$Res> {
  _$GetGroupsBrushingRecordsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetGroupsBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupIds = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeZone = null,
  }) {
    return _then(_value.copyWith(
      groupIds: null == groupIds
          ? _value.groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetGroupsBrushingRecordsRequestImplCopyWith<$Res>
    implements $GetGroupsBrushingRecordsRequestCopyWith<$Res> {
  factory _$$GetGroupsBrushingRecordsRequestImplCopyWith(
          _$GetGroupsBrushingRecordsRequestImpl value,
          $Res Function(_$GetGroupsBrushingRecordsRequestImpl) then) =
      __$$GetGroupsBrushingRecordsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_ids') List<String> groupIds,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_zone') String timeZone});
}

/// @nodoc
class __$$GetGroupsBrushingRecordsRequestImplCopyWithImpl<$Res>
    extends _$GetGroupsBrushingRecordsRequestCopyWithImpl<$Res,
        _$GetGroupsBrushingRecordsRequestImpl>
    implements _$$GetGroupsBrushingRecordsRequestImplCopyWith<$Res> {
  __$$GetGroupsBrushingRecordsRequestImplCopyWithImpl(
      _$GetGroupsBrushingRecordsRequestImpl _value,
      $Res Function(_$GetGroupsBrushingRecordsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetGroupsBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupIds = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeZone = null,
  }) {
    return _then(_$GetGroupsBrushingRecordsRequestImpl(
      groupIds: null == groupIds
          ? _value._groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetGroupsBrushingRecordsRequestImpl
    implements _GetGroupsBrushingRecordsRequest {
  const _$GetGroupsBrushingRecordsRequestImpl(
      {@JsonKey(name: 'group_ids') required final List<String> groupIds,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'time_zone') required this.timeZone})
      : _groupIds = groupIds;

  factory _$GetGroupsBrushingRecordsRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetGroupsBrushingRecordsRequestImplFromJson(json);

  final List<String> _groupIds;
  @override
  @JsonKey(name: 'group_ids')
  List<String> get groupIds {
    if (_groupIds is EqualUnmodifiableListView) return _groupIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupIds);
  }

  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'time_zone')
  final String timeZone;

  @override
  String toString() {
    return 'GetGroupsBrushingRecordsRequest(groupIds: $groupIds, startDate: $startDate, endDate: $endDate, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroupsBrushingRecordsRequestImpl &&
            const DeepCollectionEquality().equals(other._groupIds, _groupIds) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groupIds),
      startDate,
      endDate,
      timeZone);

  /// Create a copy of GetGroupsBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroupsBrushingRecordsRequestImplCopyWith<
          _$GetGroupsBrushingRecordsRequestImpl>
      get copyWith => __$$GetGroupsBrushingRecordsRequestImplCopyWithImpl<
          _$GetGroupsBrushingRecordsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetGroupsBrushingRecordsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetGroupsBrushingRecordsRequest
    implements GetGroupsBrushingRecordsRequest {
  const factory _GetGroupsBrushingRecordsRequest(
          {@JsonKey(name: 'group_ids') required final List<String> groupIds,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          @JsonKey(name: 'time_zone') required final String timeZone}) =
      _$GetGroupsBrushingRecordsRequestImpl;

  factory _GetGroupsBrushingRecordsRequest.fromJson(Map<String, dynamic> json) =
      _$GetGroupsBrushingRecordsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'group_ids')
  List<String> get groupIds;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'time_zone')
  String get timeZone;

  /// Create a copy of GetGroupsBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetGroupsBrushingRecordsRequestImplCopyWith<
          _$GetGroupsBrushingRecordsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
