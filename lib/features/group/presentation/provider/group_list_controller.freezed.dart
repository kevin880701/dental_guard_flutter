// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_list_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupListState {
  List<OrganizationData> get organizations =>
      throw _privateConstructorUsedError;
  int get selectedOrganizationIndex => throw _privateConstructorUsedError;
  List<GroupWithMemberCountData> get groups =>
      throw _privateConstructorUsedError;
  bool get isLoadingOrganizations => throw _privateConstructorUsedError;
  bool get isLoadingGroups => throw _privateConstructorUsedError;
  String? get selectedOrganizationId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of GroupListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupListStateCopyWith<GroupListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupListStateCopyWith<$Res> {
  factory $GroupListStateCopyWith(
          GroupListState value, $Res Function(GroupListState) then) =
      _$GroupListStateCopyWithImpl<$Res, GroupListState>;
  @useResult
  $Res call(
      {List<OrganizationData> organizations,
      int selectedOrganizationIndex,
      List<GroupWithMemberCountData> groups,
      bool isLoadingOrganizations,
      bool isLoadingGroups,
      String? selectedOrganizationId,
      String? error});
}

/// @nodoc
class _$GroupListStateCopyWithImpl<$Res, $Val extends GroupListState>
    implements $GroupListStateCopyWith<$Res> {
  _$GroupListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizations = null,
    Object? selectedOrganizationIndex = null,
    Object? groups = null,
    Object? isLoadingOrganizations = null,
    Object? isLoadingGroups = null,
    Object? selectedOrganizationId = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      organizations: null == organizations
          ? _value.organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<OrganizationData>,
      selectedOrganizationIndex: null == selectedOrganizationIndex
          ? _value.selectedOrganizationIndex
          : selectedOrganizationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupWithMemberCountData>,
      isLoadingOrganizations: null == isLoadingOrganizations
          ? _value.isLoadingOrganizations
          : isLoadingOrganizations // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingGroups: null == isLoadingGroups
          ? _value.isLoadingGroups
          : isLoadingGroups // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOrganizationId: freezed == selectedOrganizationId
          ? _value.selectedOrganizationId
          : selectedOrganizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupListStateImplCopyWith<$Res>
    implements $GroupListStateCopyWith<$Res> {
  factory _$$GroupListStateImplCopyWith(_$GroupListStateImpl value,
          $Res Function(_$GroupListStateImpl) then) =
      __$$GroupListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OrganizationData> organizations,
      int selectedOrganizationIndex,
      List<GroupWithMemberCountData> groups,
      bool isLoadingOrganizations,
      bool isLoadingGroups,
      String? selectedOrganizationId,
      String? error});
}

/// @nodoc
class __$$GroupListStateImplCopyWithImpl<$Res>
    extends _$GroupListStateCopyWithImpl<$Res, _$GroupListStateImpl>
    implements _$$GroupListStateImplCopyWith<$Res> {
  __$$GroupListStateImplCopyWithImpl(
      _$GroupListStateImpl _value, $Res Function(_$GroupListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizations = null,
    Object? selectedOrganizationIndex = null,
    Object? groups = null,
    Object? isLoadingOrganizations = null,
    Object? isLoadingGroups = null,
    Object? selectedOrganizationId = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GroupListStateImpl(
      organizations: null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<OrganizationData>,
      selectedOrganizationIndex: null == selectedOrganizationIndex
          ? _value.selectedOrganizationIndex
          : selectedOrganizationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupWithMemberCountData>,
      isLoadingOrganizations: null == isLoadingOrganizations
          ? _value.isLoadingOrganizations
          : isLoadingOrganizations // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingGroups: null == isLoadingGroups
          ? _value.isLoadingGroups
          : isLoadingGroups // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOrganizationId: freezed == selectedOrganizationId
          ? _value.selectedOrganizationId
          : selectedOrganizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GroupListStateImpl implements _GroupListState {
  const _$GroupListStateImpl(
      {final List<OrganizationData> organizations = const [],
      this.selectedOrganizationIndex = 0,
      final List<GroupWithMemberCountData> groups = const [],
      this.isLoadingOrganizations = false,
      this.isLoadingGroups = false,
      this.selectedOrganizationId,
      this.error})
      : _organizations = organizations,
        _groups = groups;

  final List<OrganizationData> _organizations;
  @override
  @JsonKey()
  List<OrganizationData> get organizations {
    if (_organizations is EqualUnmodifiableListView) return _organizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizations);
  }

  @override
  @JsonKey()
  final int selectedOrganizationIndex;
  final List<GroupWithMemberCountData> _groups;
  @override
  @JsonKey()
  List<GroupWithMemberCountData> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  @JsonKey()
  final bool isLoadingOrganizations;
  @override
  @JsonKey()
  final bool isLoadingGroups;
  @override
  final String? selectedOrganizationId;
  @override
  final String? error;

  @override
  String toString() {
    return 'GroupListState(organizations: $organizations, selectedOrganizationIndex: $selectedOrganizationIndex, groups: $groups, isLoadingOrganizations: $isLoadingOrganizations, isLoadingGroups: $isLoadingGroups, selectedOrganizationId: $selectedOrganizationId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations) &&
            (identical(other.selectedOrganizationIndex,
                    selectedOrganizationIndex) ||
                other.selectedOrganizationIndex == selectedOrganizationIndex) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.isLoadingOrganizations, isLoadingOrganizations) ||
                other.isLoadingOrganizations == isLoadingOrganizations) &&
            (identical(other.isLoadingGroups, isLoadingGroups) ||
                other.isLoadingGroups == isLoadingGroups) &&
            (identical(other.selectedOrganizationId, selectedOrganizationId) ||
                other.selectedOrganizationId == selectedOrganizationId) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_organizations),
      selectedOrganizationIndex,
      const DeepCollectionEquality().hash(_groups),
      isLoadingOrganizations,
      isLoadingGroups,
      selectedOrganizationId,
      error);

  /// Create a copy of GroupListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupListStateImplCopyWith<_$GroupListStateImpl> get copyWith =>
      __$$GroupListStateImplCopyWithImpl<_$GroupListStateImpl>(
          this, _$identity);
}

abstract class _GroupListState implements GroupListState {
  const factory _GroupListState(
      {final List<OrganizationData> organizations,
      final int selectedOrganizationIndex,
      final List<GroupWithMemberCountData> groups,
      final bool isLoadingOrganizations,
      final bool isLoadingGroups,
      final String? selectedOrganizationId,
      final String? error}) = _$GroupListStateImpl;

  @override
  List<OrganizationData> get organizations;
  @override
  int get selectedOrganizationIndex;
  @override
  List<GroupWithMemberCountData> get groups;
  @override
  bool get isLoadingOrganizations;
  @override
  bool get isLoadingGroups;
  @override
  String? get selectedOrganizationId;
  @override
  String? get error;

  /// Create a copy of GroupListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupListStateImplCopyWith<_$GroupListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
