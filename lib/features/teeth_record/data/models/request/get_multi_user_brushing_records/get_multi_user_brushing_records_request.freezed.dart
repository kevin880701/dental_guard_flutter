// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_multi_user_brushing_records_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMultiUserBrushingRecordsRequest _$GetMultiUserBrushingRecordsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetMultiUserBrushingRecordsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetMultiUserBrushingRecordsRequest {
  @JsonKey(name: 'user_ids')
  List<String> get userIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;

  /// Serializes this GetMultiUserBrushingRecordsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMultiUserBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMultiUserBrushingRecordsRequestCopyWith<
          GetMultiUserBrushingRecordsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMultiUserBrushingRecordsRequestCopyWith<$Res> {
  factory $GetMultiUserBrushingRecordsRequestCopyWith(
          GetMultiUserBrushingRecordsRequest value,
          $Res Function(GetMultiUserBrushingRecordsRequest) then) =
      _$GetMultiUserBrushingRecordsRequestCopyWithImpl<$Res,
          GetMultiUserBrushingRecordsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ids') List<String> userIds,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate});
}

/// @nodoc
class _$GetMultiUserBrushingRecordsRequestCopyWithImpl<$Res,
        $Val extends GetMultiUserBrushingRecordsRequest>
    implements $GetMultiUserBrushingRecordsRequestCopyWith<$Res> {
  _$GetMultiUserBrushingRecordsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMultiUserBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? startDate = null,
    Object? endDate = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMultiUserBrushingRecordsRequestImplCopyWith<$Res>
    implements $GetMultiUserBrushingRecordsRequestCopyWith<$Res> {
  factory _$$GetMultiUserBrushingRecordsRequestImplCopyWith(
          _$GetMultiUserBrushingRecordsRequestImpl value,
          $Res Function(_$GetMultiUserBrushingRecordsRequestImpl) then) =
      __$$GetMultiUserBrushingRecordsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ids') List<String> userIds,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate});
}

/// @nodoc
class __$$GetMultiUserBrushingRecordsRequestImplCopyWithImpl<$Res>
    extends _$GetMultiUserBrushingRecordsRequestCopyWithImpl<$Res,
        _$GetMultiUserBrushingRecordsRequestImpl>
    implements _$$GetMultiUserBrushingRecordsRequestImplCopyWith<$Res> {
  __$$GetMultiUserBrushingRecordsRequestImplCopyWithImpl(
      _$GetMultiUserBrushingRecordsRequestImpl _value,
      $Res Function(_$GetMultiUserBrushingRecordsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMultiUserBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$GetMultiUserBrushingRecordsRequestImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMultiUserBrushingRecordsRequestImpl
    implements _GetMultiUserBrushingRecordsRequest {
  const _$GetMultiUserBrushingRecordsRequestImpl(
      {@JsonKey(name: 'user_ids') required final List<String> userIds,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate})
      : _userIds = userIds;

  factory _$GetMultiUserBrushingRecordsRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetMultiUserBrushingRecordsRequestImplFromJson(json);

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
  String toString() {
    return 'GetMultiUserBrushingRecordsRequest(userIds: $userIds, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMultiUserBrushingRecordsRequestImpl &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_userIds), startDate, endDate);

  /// Create a copy of GetMultiUserBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMultiUserBrushingRecordsRequestImplCopyWith<
          _$GetMultiUserBrushingRecordsRequestImpl>
      get copyWith => __$$GetMultiUserBrushingRecordsRequestImplCopyWithImpl<
          _$GetMultiUserBrushingRecordsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMultiUserBrushingRecordsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetMultiUserBrushingRecordsRequest
    implements GetMultiUserBrushingRecordsRequest {
  const factory _GetMultiUserBrushingRecordsRequest(
          {@JsonKey(name: 'user_ids') required final List<String> userIds,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate}) =
      _$GetMultiUserBrushingRecordsRequestImpl;

  factory _GetMultiUserBrushingRecordsRequest.fromJson(
          Map<String, dynamic> json) =
      _$GetMultiUserBrushingRecordsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_ids')
  List<String> get userIds;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;

  /// Create a copy of GetMultiUserBrushingRecordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMultiUserBrushingRecordsRequestImplCopyWith<
          _$GetMultiUserBrushingRecordsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
