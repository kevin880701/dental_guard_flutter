// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_group_top_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupTopUsersRequest _$GroupTopUsersRequestFromJson(Map<String, dynamic> json) {
  return _GroupTopUsersRequest.fromJson(json);
}

/// @nodoc
mixin _$GroupTopUsersRequest {
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_criteria')
  RankSortCriteria get sortCriteria => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String get timeZone => throw _privateConstructorUsedError;

  /// Serializes this GroupTopUsersRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupTopUsersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupTopUsersRequestCopyWith<GroupTopUsersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupTopUsersRequestCopyWith<$Res> {
  factory $GroupTopUsersRequestCopyWith(GroupTopUsersRequest value,
          $Res Function(GroupTopUsersRequest) then) =
      _$GroupTopUsersRequestCopyWithImpl<$Res, GroupTopUsersRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'sort_criteria') RankSortCriteria sortCriteria,
      @JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_zone') String timeZone});
}

/// @nodoc
class _$GroupTopUsersRequestCopyWithImpl<$Res,
        $Val extends GroupTopUsersRequest>
    implements $GroupTopUsersRequestCopyWith<$Res> {
  _$GroupTopUsersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupTopUsersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? sortCriteria = null,
    Object? limit = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeZone = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      sortCriteria: null == sortCriteria
          ? _value.sortCriteria
          : sortCriteria // ignore: cast_nullable_to_non_nullable
              as RankSortCriteria,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$GroupTopUsersRequestImplCopyWith<$Res>
    implements $GroupTopUsersRequestCopyWith<$Res> {
  factory _$$GroupTopUsersRequestImplCopyWith(_$GroupTopUsersRequestImpl value,
          $Res Function(_$GroupTopUsersRequestImpl) then) =
      __$$GroupTopUsersRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'sort_criteria') RankSortCriteria sortCriteria,
      @JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_zone') String timeZone});
}

/// @nodoc
class __$$GroupTopUsersRequestImplCopyWithImpl<$Res>
    extends _$GroupTopUsersRequestCopyWithImpl<$Res, _$GroupTopUsersRequestImpl>
    implements _$$GroupTopUsersRequestImplCopyWith<$Res> {
  __$$GroupTopUsersRequestImplCopyWithImpl(_$GroupTopUsersRequestImpl _value,
      $Res Function(_$GroupTopUsersRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupTopUsersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? sortCriteria = null,
    Object? limit = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeZone = null,
  }) {
    return _then(_$GroupTopUsersRequestImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      sortCriteria: null == sortCriteria
          ? _value.sortCriteria
          : sortCriteria // ignore: cast_nullable_to_non_nullable
              as RankSortCriteria,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$GroupTopUsersRequestImpl implements _GroupTopUsersRequest {
  const _$GroupTopUsersRequestImpl(
      {@JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'sort_criteria') required this.sortCriteria,
      @JsonKey(name: 'limit') required this.limit,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'time_zone') required this.timeZone});

  factory _$GroupTopUsersRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupTopUsersRequestImplFromJson(json);

  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  @JsonKey(name: 'sort_criteria')
  final RankSortCriteria sortCriteria;
  @override
  @JsonKey(name: 'limit')
  final int limit;
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
    return 'GroupTopUsersRequest(groupId: $groupId, sortCriteria: $sortCriteria, limit: $limit, startDate: $startDate, endDate: $endDate, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupTopUsersRequestImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.sortCriteria, sortCriteria) ||
                other.sortCriteria == sortCriteria) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupId, sortCriteria, limit, startDate, endDate, timeZone);

  /// Create a copy of GroupTopUsersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupTopUsersRequestImplCopyWith<_$GroupTopUsersRequestImpl>
      get copyWith =>
          __$$GroupTopUsersRequestImplCopyWithImpl<_$GroupTopUsersRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupTopUsersRequestImplToJson(
      this,
    );
  }
}

abstract class _GroupTopUsersRequest implements GroupTopUsersRequest {
  const factory _GroupTopUsersRequest(
          {@JsonKey(name: 'group_id') required final String groupId,
          @JsonKey(name: 'sort_criteria')
          required final RankSortCriteria sortCriteria,
          @JsonKey(name: 'limit') required final int limit,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          @JsonKey(name: 'time_zone') required final String timeZone}) =
      _$GroupTopUsersRequestImpl;

  factory _GroupTopUsersRequest.fromJson(Map<String, dynamic> json) =
      _$GroupTopUsersRequestImpl.fromJson;

  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  @JsonKey(name: 'sort_criteria')
  RankSortCriteria get sortCriteria;
  @override
  @JsonKey(name: 'limit')
  int get limit;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'time_zone')
  String get timeZone;

  /// Create a copy of GroupTopUsersRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupTopUsersRequestImplCopyWith<_$GroupTopUsersRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
