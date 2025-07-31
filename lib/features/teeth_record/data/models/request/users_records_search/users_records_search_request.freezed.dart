// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_records_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersRecordsSearchRequest _$UsersRecordsSearchRequestFromJson(
    Map<String, dynamic> json) {
  return _UsersRecordsSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$UsersRecordsSearchRequest {
  @JsonKey(name: 'user_ids')
  List<String> get userIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String get timeZone => throw _privateConstructorUsedError;

  /// Serializes this UsersRecordsSearchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersRecordsSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersRecordsSearchRequestCopyWith<UsersRecordsSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersRecordsSearchRequestCopyWith<$Res> {
  factory $UsersRecordsSearchRequestCopyWith(UsersRecordsSearchRequest value,
          $Res Function(UsersRecordsSearchRequest) then) =
      _$UsersRecordsSearchRequestCopyWithImpl<$Res, UsersRecordsSearchRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ids') List<String> userIds,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_zone') String timeZone});
}

/// @nodoc
class _$UsersRecordsSearchRequestCopyWithImpl<$Res,
        $Val extends UsersRecordsSearchRequest>
    implements $UsersRecordsSearchRequestCopyWith<$Res> {
  _$UsersRecordsSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersRecordsSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeZone = null,
  }) {
    return _then(_value.copyWith(
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UsersRecordsSearchRequestImplCopyWith<$Res>
    implements $UsersRecordsSearchRequestCopyWith<$Res> {
  factory _$$UsersRecordsSearchRequestImplCopyWith(
          _$UsersRecordsSearchRequestImpl value,
          $Res Function(_$UsersRecordsSearchRequestImpl) then) =
      __$$UsersRecordsSearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ids') List<String> userIds,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'time_zone') String timeZone});
}

/// @nodoc
class __$$UsersRecordsSearchRequestImplCopyWithImpl<$Res>
    extends _$UsersRecordsSearchRequestCopyWithImpl<$Res,
        _$UsersRecordsSearchRequestImpl>
    implements _$$UsersRecordsSearchRequestImplCopyWith<$Res> {
  __$$UsersRecordsSearchRequestImplCopyWithImpl(
      _$UsersRecordsSearchRequestImpl _value,
      $Res Function(_$UsersRecordsSearchRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersRecordsSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? timeZone = null,
  }) {
    return _then(_$UsersRecordsSearchRequestImpl(
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
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
class _$UsersRecordsSearchRequestImpl implements _UsersRecordsSearchRequest {
  const _$UsersRecordsSearchRequestImpl(
      {@JsonKey(name: 'user_ids') required final List<String> userIds,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'time_zone') required this.timeZone})
      : _userIds = userIds;

  factory _$UsersRecordsSearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersRecordsSearchRequestImplFromJson(json);

  final List<String> _userIds;
  @override
  @JsonKey(name: 'user_ids')
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
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
    return 'UsersRecordsSearchRequest(userIds: $userIds, startDate: $startDate, endDate: $endDate, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersRecordsSearchRequestImpl &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
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
      const DeepCollectionEquality().hash(_userIds),
      startDate,
      endDate,
      timeZone);

  /// Create a copy of UsersRecordsSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersRecordsSearchRequestImplCopyWith<_$UsersRecordsSearchRequestImpl>
      get copyWith => __$$UsersRecordsSearchRequestImplCopyWithImpl<
          _$UsersRecordsSearchRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersRecordsSearchRequestImplToJson(
      this,
    );
  }
}

abstract class _UsersRecordsSearchRequest implements UsersRecordsSearchRequest {
  const factory _UsersRecordsSearchRequest(
          {@JsonKey(name: 'user_ids') required final List<String> userIds,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          @JsonKey(name: 'time_zone') required final String timeZone}) =
      _$UsersRecordsSearchRequestImpl;

  factory _UsersRecordsSearchRequest.fromJson(Map<String, dynamic> json) =
      _$UsersRecordsSearchRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_ids')
  List<String> get userIds;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'time_zone')
  String get timeZone;

  /// Create a copy of UsersRecordsSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersRecordsSearchRequestImplCopyWith<_$UsersRecordsSearchRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
