// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_group_name_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateGroupNameRequest _$UpdateGroupNameRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateGroupNameRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateGroupNameRequest {
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_name')
  String get newName => throw _privateConstructorUsedError;

  /// Serializes this UpdateGroupNameRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGroupNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGroupNameRequestCopyWith<UpdateGroupNameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupNameRequestCopyWith<$Res> {
  factory $UpdateGroupNameRequestCopyWith(UpdateGroupNameRequest value,
          $Res Function(UpdateGroupNameRequest) then) =
      _$UpdateGroupNameRequestCopyWithImpl<$Res, UpdateGroupNameRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'new_name') String newName});
}

/// @nodoc
class _$UpdateGroupNameRequestCopyWithImpl<$Res,
        $Val extends UpdateGroupNameRequest>
    implements $UpdateGroupNameRequestCopyWith<$Res> {
  _$UpdateGroupNameRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGroupNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? newName = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      newName: null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateGroupNameRequestImplCopyWith<$Res>
    implements $UpdateGroupNameRequestCopyWith<$Res> {
  factory _$$UpdateGroupNameRequestImplCopyWith(
          _$UpdateGroupNameRequestImpl value,
          $Res Function(_$UpdateGroupNameRequestImpl) then) =
      __$$UpdateGroupNameRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'new_name') String newName});
}

/// @nodoc
class __$$UpdateGroupNameRequestImplCopyWithImpl<$Res>
    extends _$UpdateGroupNameRequestCopyWithImpl<$Res,
        _$UpdateGroupNameRequestImpl>
    implements _$$UpdateGroupNameRequestImplCopyWith<$Res> {
  __$$UpdateGroupNameRequestImplCopyWithImpl(
      _$UpdateGroupNameRequestImpl _value,
      $Res Function(_$UpdateGroupNameRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateGroupNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? newName = null,
  }) {
    return _then(_$UpdateGroupNameRequestImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      newName: null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateGroupNameRequestImpl implements _UpdateGroupNameRequest {
  const _$UpdateGroupNameRequestImpl(
      {@JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'new_name') required this.newName});

  factory _$UpdateGroupNameRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateGroupNameRequestImplFromJson(json);

  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  @JsonKey(name: 'new_name')
  final String newName;

  @override
  String toString() {
    return 'UpdateGroupNameRequest(groupId: $groupId, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroupNameRequestImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, newName);

  /// Create a copy of UpdateGroupNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroupNameRequestImplCopyWith<_$UpdateGroupNameRequestImpl>
      get copyWith => __$$UpdateGroupNameRequestImplCopyWithImpl<
          _$UpdateGroupNameRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateGroupNameRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateGroupNameRequest implements UpdateGroupNameRequest {
  const factory _UpdateGroupNameRequest(
          {@JsonKey(name: 'group_id') required final String groupId,
          @JsonKey(name: 'new_name') required final String newName}) =
      _$UpdateGroupNameRequestImpl;

  factory _UpdateGroupNameRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateGroupNameRequestImpl.fromJson;

  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  @JsonKey(name: 'new_name')
  String get newName;

  /// Create a copy of UpdateGroupNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGroupNameRequestImplCopyWith<_$UpdateGroupNameRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
