// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_member_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupMemberRequest _$GroupMemberRequestFromJson(Map<String, dynamic> json) {
  return _GroupMemberRequest.fromJson(json);
}

/// @nodoc
mixin _$GroupMemberRequest {
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this GroupMemberRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMemberRequestCopyWith<GroupMemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMemberRequestCopyWith<$Res> {
  factory $GroupMemberRequestCopyWith(
          GroupMemberRequest value, $Res Function(GroupMemberRequest) then) =
      _$GroupMemberRequestCopyWithImpl<$Res, GroupMemberRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$GroupMemberRequestCopyWithImpl<$Res, $Val extends GroupMemberRequest>
    implements $GroupMemberRequestCopyWith<$Res> {
  _$GroupMemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupMemberRequestImplCopyWith<$Res>
    implements $GroupMemberRequestCopyWith<$Res> {
  factory _$$GroupMemberRequestImplCopyWith(_$GroupMemberRequestImpl value,
          $Res Function(_$GroupMemberRequestImpl) then) =
      __$$GroupMemberRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$GroupMemberRequestImplCopyWithImpl<$Res>
    extends _$GroupMemberRequestCopyWithImpl<$Res, _$GroupMemberRequestImpl>
    implements _$$GroupMemberRequestImplCopyWith<$Res> {
  __$$GroupMemberRequestImplCopyWithImpl(_$GroupMemberRequestImpl _value,
      $Res Function(_$GroupMemberRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
  }) {
    return _then(_$GroupMemberRequestImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
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
class _$GroupMemberRequestImpl implements _GroupMemberRequest {
  const _$GroupMemberRequestImpl(
      {@JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$GroupMemberRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupMemberRequestImplFromJson(json);

  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'GroupMemberRequest(groupId: $groupId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMemberRequestImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, userId);

  /// Create a copy of GroupMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMemberRequestImplCopyWith<_$GroupMemberRequestImpl> get copyWith =>
      __$$GroupMemberRequestImplCopyWithImpl<_$GroupMemberRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupMemberRequestImplToJson(
      this,
    );
  }
}

abstract class _GroupMemberRequest implements GroupMemberRequest {
  const factory _GroupMemberRequest(
          {@JsonKey(name: 'group_id') required final String groupId,
          @JsonKey(name: 'user_id') required final String userId}) =
      _$GroupMemberRequestImpl;

  factory _GroupMemberRequest.fromJson(Map<String, dynamic> json) =
      _$GroupMemberRequestImpl.fromJson;

  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of GroupMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMemberRequestImplCopyWith<_$GroupMemberRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
