// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrganizationState {
  GroupsManageData? get groupsManageData => throw _privateConstructorUsedError;
  List<GroupData>? get allParentGroups => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationStateCopyWith<OrganizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationStateCopyWith<$Res> {
  factory $OrganizationStateCopyWith(
          OrganizationState value, $Res Function(OrganizationState) then) =
      _$OrganizationStateCopyWithImpl<$Res, OrganizationState>;
  @useResult
  $Res call(
      {GroupsManageData? groupsManageData, List<GroupData>? allParentGroups});

  $GroupsManageDataCopyWith<$Res>? get groupsManageData;
}

/// @nodoc
class _$OrganizationStateCopyWithImpl<$Res, $Val extends OrganizationState>
    implements $OrganizationStateCopyWith<$Res> {
  _$OrganizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupsManageData = freezed,
    Object? allParentGroups = freezed,
  }) {
    return _then(_value.copyWith(
      groupsManageData: freezed == groupsManageData
          ? _value.groupsManageData
          : groupsManageData // ignore: cast_nullable_to_non_nullable
              as GroupsManageData?,
      allParentGroups: freezed == allParentGroups
          ? _value.allParentGroups
          : allParentGroups // ignore: cast_nullable_to_non_nullable
              as List<GroupData>?,
    ) as $Val);
  }

  /// Create a copy of OrganizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupsManageDataCopyWith<$Res>? get groupsManageData {
    if (_value.groupsManageData == null) {
      return null;
    }

    return $GroupsManageDataCopyWith<$Res>(_value.groupsManageData!, (value) {
      return _then(_value.copyWith(groupsManageData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationStateImplCopyWith<$Res>
    implements $OrganizationStateCopyWith<$Res> {
  factory _$$OrganizationStateImplCopyWith(_$OrganizationStateImpl value,
          $Res Function(_$OrganizationStateImpl) then) =
      __$$OrganizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GroupsManageData? groupsManageData, List<GroupData>? allParentGroups});

  @override
  $GroupsManageDataCopyWith<$Res>? get groupsManageData;
}

/// @nodoc
class __$$OrganizationStateImplCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res, _$OrganizationStateImpl>
    implements _$$OrganizationStateImplCopyWith<$Res> {
  __$$OrganizationStateImplCopyWithImpl(_$OrganizationStateImpl _value,
      $Res Function(_$OrganizationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupsManageData = freezed,
    Object? allParentGroups = freezed,
  }) {
    return _then(_$OrganizationStateImpl(
      groupsManageData: freezed == groupsManageData
          ? _value.groupsManageData
          : groupsManageData // ignore: cast_nullable_to_non_nullable
              as GroupsManageData?,
      allParentGroups: freezed == allParentGroups
          ? _value._allParentGroups
          : allParentGroups // ignore: cast_nullable_to_non_nullable
              as List<GroupData>?,
    ));
  }
}

/// @nodoc

class _$OrganizationStateImpl implements _OrganizationState {
  const _$OrganizationStateImpl(
      {this.groupsManageData, final List<GroupData>? allParentGroups})
      : _allParentGroups = allParentGroups;

  @override
  final GroupsManageData? groupsManageData;
  final List<GroupData>? _allParentGroups;
  @override
  List<GroupData>? get allParentGroups {
    final value = _allParentGroups;
    if (value == null) return null;
    if (_allParentGroups is EqualUnmodifiableListView) return _allParentGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrganizationState(groupsManageData: $groupsManageData, allParentGroups: $allParentGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationStateImpl &&
            (identical(other.groupsManageData, groupsManageData) ||
                other.groupsManageData == groupsManageData) &&
            const DeepCollectionEquality()
                .equals(other._allParentGroups, _allParentGroups));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupsManageData,
      const DeepCollectionEquality().hash(_allParentGroups));

  /// Create a copy of OrganizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationStateImplCopyWith<_$OrganizationStateImpl> get copyWith =>
      __$$OrganizationStateImplCopyWithImpl<_$OrganizationStateImpl>(
          this, _$identity);
}

abstract class _OrganizationState implements OrganizationState {
  const factory _OrganizationState(
      {final GroupsManageData? groupsManageData,
      final List<GroupData>? allParentGroups}) = _$OrganizationStateImpl;

  @override
  GroupsManageData? get groupsManageData;
  @override
  List<GroupData>? get allParentGroups;

  /// Create a copy of OrganizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationStateImplCopyWith<_$OrganizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
