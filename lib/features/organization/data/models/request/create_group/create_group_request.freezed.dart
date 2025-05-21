// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_group_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateGroupRequest _$CreateGroupRequestFromJson(Map<String, dynamic> json) {
  return _CreateGroupRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateGroupRequest {
  @JsonKey(name: 'organization_id')
  String get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_name')
  String get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateGroupRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGroupRequestCopyWith<CreateGroupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupRequestCopyWith<$Res> {
  factory $CreateGroupRequestCopyWith(
          CreateGroupRequest value, $Res Function(CreateGroupRequest) then) =
      _$CreateGroupRequestCopyWithImpl<$Res, CreateGroupRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$CreateGroupRequestCopyWithImpl<$Res, $Val extends CreateGroupRequest>
    implements $CreateGroupRequestCopyWith<$Res> {
  _$CreateGroupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? groupName = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGroupRequestImplCopyWith<$Res>
    implements $CreateGroupRequestCopyWith<$Res> {
  factory _$$CreateGroupRequestImplCopyWith(_$CreateGroupRequestImpl value,
          $Res Function(_$CreateGroupRequestImpl) then) =
      __$$CreateGroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$CreateGroupRequestImplCopyWithImpl<$Res>
    extends _$CreateGroupRequestCopyWithImpl<$Res, _$CreateGroupRequestImpl>
    implements _$$CreateGroupRequestImplCopyWith<$Res> {
  __$$CreateGroupRequestImplCopyWithImpl(_$CreateGroupRequestImpl _value,
      $Res Function(_$CreateGroupRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? groupName = null,
    Object? userId = null,
  }) {
    return _then(_$CreateGroupRequestImpl(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGroupRequestImpl implements _CreateGroupRequest {
  const _$CreateGroupRequestImpl(
      {@JsonKey(name: 'organization_id') required this.organizationId,
      @JsonKey(name: 'group_name') required this.groupName,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$CreateGroupRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGroupRequestImplFromJson(json);

  @override
  @JsonKey(name: 'organization_id')
  final String organizationId;
  @override
  @JsonKey(name: 'group_name')
  final String groupName;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'CreateGroupRequest(organizationId: $organizationId, groupName: $groupName, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupRequestImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, organizationId, groupName, userId);

  /// Create a copy of CreateGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupRequestImplCopyWith<_$CreateGroupRequestImpl> get copyWith =>
      __$$CreateGroupRequestImplCopyWithImpl<_$CreateGroupRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGroupRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateGroupRequest implements CreateGroupRequest {
  const factory _CreateGroupRequest(
      {@JsonKey(name: 'organization_id') required final String organizationId,
      @JsonKey(name: 'group_name') required final String groupName,
      @JsonKey(name: 'user_id')
      required final String userId}) = _$CreateGroupRequestImpl;

  factory _CreateGroupRequest.fromJson(Map<String, dynamic> json) =
      _$CreateGroupRequestImpl.fromJson;

  @override
  @JsonKey(name: 'organization_id')
  String get organizationId;
  @override
  @JsonKey(name: 'group_name')
  String get groupName;
  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of CreateGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupRequestImplCopyWith<_$CreateGroupRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
