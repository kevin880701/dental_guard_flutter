// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_list_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberListState {
  GroupWithMemberCountData? get group => throw _privateConstructorUsedError;
  List<UserInfoData> get users => throw _privateConstructorUsedError;

  /// Create a copy of MemberListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberListStateCopyWith<MemberListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberListStateCopyWith<$Res> {
  factory $MemberListStateCopyWith(
          MemberListState value, $Res Function(MemberListState) then) =
      _$MemberListStateCopyWithImpl<$Res, MemberListState>;
  @useResult
  $Res call({GroupWithMemberCountData? group, List<UserInfoData> users});

  $GroupWithMemberCountDataCopyWith<$Res>? get group;
}

/// @nodoc
class _$MemberListStateCopyWithImpl<$Res, $Val extends MemberListState>
    implements $MemberListStateCopyWith<$Res> {
  _$MemberListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupWithMemberCountData?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInfoData>,
    ) as $Val);
  }

  /// Create a copy of MemberListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupWithMemberCountDataCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupWithMemberCountDataCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberListStateImplCopyWith<$Res>
    implements $MemberListStateCopyWith<$Res> {
  factory _$$MemberListStateImplCopyWith(_$MemberListStateImpl value,
          $Res Function(_$MemberListStateImpl) then) =
      __$$MemberListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroupWithMemberCountData? group, List<UserInfoData> users});

  @override
  $GroupWithMemberCountDataCopyWith<$Res>? get group;
}

/// @nodoc
class __$$MemberListStateImplCopyWithImpl<$Res>
    extends _$MemberListStateCopyWithImpl<$Res, _$MemberListStateImpl>
    implements _$$MemberListStateImplCopyWith<$Res> {
  __$$MemberListStateImplCopyWithImpl(
      _$MemberListStateImpl _value, $Res Function(_$MemberListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? users = null,
  }) {
    return _then(_$MemberListStateImpl(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupWithMemberCountData?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInfoData>,
    ));
  }
}

/// @nodoc

class _$MemberListStateImpl implements _MemberListState {
  const _$MemberListStateImpl(
      {this.group, final List<UserInfoData> users = const []})
      : _users = users;

  @override
  final GroupWithMemberCountData? group;
  final List<UserInfoData> _users;
  @override
  @JsonKey()
  List<UserInfoData> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'MemberListState(group: $group, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberListStateImpl &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, group, const DeepCollectionEquality().hash(_users));

  /// Create a copy of MemberListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberListStateImplCopyWith<_$MemberListStateImpl> get copyWith =>
      __$$MemberListStateImplCopyWithImpl<_$MemberListStateImpl>(
          this, _$identity);
}

abstract class _MemberListState implements MemberListState {
  const factory _MemberListState(
      {final GroupWithMemberCountData? group,
      final List<UserInfoData> users}) = _$MemberListStateImpl;

  @override
  GroupWithMemberCountData? get group;
  @override
  List<UserInfoData> get users;

  /// Create a copy of MemberListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberListStateImplCopyWith<_$MemberListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
