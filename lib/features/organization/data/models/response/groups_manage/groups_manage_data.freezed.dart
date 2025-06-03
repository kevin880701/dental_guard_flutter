// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_manage_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupsManageData _$GroupsManageDataFromJson(Map<String, dynamic> json) {
  return _GroupsManageData.fromJson(json);
}

/// @nodoc
mixin _$GroupsManageData {
  @JsonKey(name: 'hierarchy')
  List<GroupHierarchyNode> get hierarchy => throw _privateConstructorUsedError;
  @JsonKey(name: 'members')
  List<GroupWithUsers> get members => throw _privateConstructorUsedError;

  /// Serializes this GroupsManageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupsManageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupsManageDataCopyWith<GroupsManageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsManageDataCopyWith<$Res> {
  factory $GroupsManageDataCopyWith(
          GroupsManageData value, $Res Function(GroupsManageData) then) =
      _$GroupsManageDataCopyWithImpl<$Res, GroupsManageData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hierarchy') List<GroupHierarchyNode> hierarchy,
      @JsonKey(name: 'members') List<GroupWithUsers> members});
}

/// @nodoc
class _$GroupsManageDataCopyWithImpl<$Res, $Val extends GroupsManageData>
    implements $GroupsManageDataCopyWith<$Res> {
  _$GroupsManageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsManageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hierarchy = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      hierarchy: null == hierarchy
          ? _value.hierarchy
          : hierarchy // ignore: cast_nullable_to_non_nullable
              as List<GroupHierarchyNode>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<GroupWithUsers>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupsManageDataImplCopyWith<$Res>
    implements $GroupsManageDataCopyWith<$Res> {
  factory _$$GroupsManageDataImplCopyWith(_$GroupsManageDataImpl value,
          $Res Function(_$GroupsManageDataImpl) then) =
      __$$GroupsManageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hierarchy') List<GroupHierarchyNode> hierarchy,
      @JsonKey(name: 'members') List<GroupWithUsers> members});
}

/// @nodoc
class __$$GroupsManageDataImplCopyWithImpl<$Res>
    extends _$GroupsManageDataCopyWithImpl<$Res, _$GroupsManageDataImpl>
    implements _$$GroupsManageDataImplCopyWith<$Res> {
  __$$GroupsManageDataImplCopyWithImpl(_$GroupsManageDataImpl _value,
      $Res Function(_$GroupsManageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsManageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hierarchy = null,
    Object? members = null,
  }) {
    return _then(_$GroupsManageDataImpl(
      hierarchy: null == hierarchy
          ? _value._hierarchy
          : hierarchy // ignore: cast_nullable_to_non_nullable
              as List<GroupHierarchyNode>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<GroupWithUsers>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupsManageDataImpl implements _GroupsManageData {
  const _$GroupsManageDataImpl(
      {@JsonKey(name: 'hierarchy')
      final List<GroupHierarchyNode> hierarchy = const [],
      @JsonKey(name: 'members') final List<GroupWithUsers> members = const []})
      : _hierarchy = hierarchy,
        _members = members;

  factory _$GroupsManageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupsManageDataImplFromJson(json);

  final List<GroupHierarchyNode> _hierarchy;
  @override
  @JsonKey(name: 'hierarchy')
  List<GroupHierarchyNode> get hierarchy {
    if (_hierarchy is EqualUnmodifiableListView) return _hierarchy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hierarchy);
  }

  final List<GroupWithUsers> _members;
  @override
  @JsonKey(name: 'members')
  List<GroupWithUsers> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'GroupsManageData(hierarchy: $hierarchy, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsManageDataImpl &&
            const DeepCollectionEquality()
                .equals(other._hierarchy, _hierarchy) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hierarchy),
      const DeepCollectionEquality().hash(_members));

  /// Create a copy of GroupsManageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsManageDataImplCopyWith<_$GroupsManageDataImpl> get copyWith =>
      __$$GroupsManageDataImplCopyWithImpl<_$GroupsManageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupsManageDataImplToJson(
      this,
    );
  }
}

abstract class _GroupsManageData implements GroupsManageData {
  const factory _GroupsManageData(
          {@JsonKey(name: 'hierarchy') final List<GroupHierarchyNode> hierarchy,
          @JsonKey(name: 'members') final List<GroupWithUsers> members}) =
      _$GroupsManageDataImpl;

  factory _GroupsManageData.fromJson(Map<String, dynamic> json) =
      _$GroupsManageDataImpl.fromJson;

  @override
  @JsonKey(name: 'hierarchy')
  List<GroupHierarchyNode> get hierarchy;
  @override
  @JsonKey(name: 'members')
  List<GroupWithUsers> get members;

  /// Create a copy of GroupsManageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsManageDataImplCopyWith<_$GroupsManageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupHierarchyNode _$GroupHierarchyNodeFromJson(Map<String, dynamic> json) {
  return _GroupHierarchyNode.fromJson(json);
}

/// @nodoc
mixin _$GroupHierarchyNode {
  @JsonKey(name: 'group')
  GroupData get group => throw _privateConstructorUsedError;
  @JsonKey(name: 'children')
  List<GroupHierarchyNode> get children => throw _privateConstructorUsedError;

  /// Serializes this GroupHierarchyNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupHierarchyNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupHierarchyNodeCopyWith<GroupHierarchyNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupHierarchyNodeCopyWith<$Res> {
  factory $GroupHierarchyNodeCopyWith(
          GroupHierarchyNode value, $Res Function(GroupHierarchyNode) then) =
      _$GroupHierarchyNodeCopyWithImpl<$Res, GroupHierarchyNode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group') GroupData group,
      @JsonKey(name: 'children') List<GroupHierarchyNode> children});

  $GroupDataCopyWith<$Res> get group;
}

/// @nodoc
class _$GroupHierarchyNodeCopyWithImpl<$Res, $Val extends GroupHierarchyNode>
    implements $GroupHierarchyNodeCopyWith<$Res> {
  _$GroupHierarchyNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupHierarchyNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupData,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<GroupHierarchyNode>,
    ) as $Val);
  }

  /// Create a copy of GroupHierarchyNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupDataCopyWith<$Res> get group {
    return $GroupDataCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupHierarchyNodeImplCopyWith<$Res>
    implements $GroupHierarchyNodeCopyWith<$Res> {
  factory _$$GroupHierarchyNodeImplCopyWith(_$GroupHierarchyNodeImpl value,
          $Res Function(_$GroupHierarchyNodeImpl) then) =
      __$$GroupHierarchyNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group') GroupData group,
      @JsonKey(name: 'children') List<GroupHierarchyNode> children});

  @override
  $GroupDataCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupHierarchyNodeImplCopyWithImpl<$Res>
    extends _$GroupHierarchyNodeCopyWithImpl<$Res, _$GroupHierarchyNodeImpl>
    implements _$$GroupHierarchyNodeImplCopyWith<$Res> {
  __$$GroupHierarchyNodeImplCopyWithImpl(_$GroupHierarchyNodeImpl _value,
      $Res Function(_$GroupHierarchyNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupHierarchyNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? children = null,
  }) {
    return _then(_$GroupHierarchyNodeImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupData,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<GroupHierarchyNode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupHierarchyNodeImpl implements _GroupHierarchyNode {
  const _$GroupHierarchyNodeImpl(
      {@JsonKey(name: 'group') required this.group,
      @JsonKey(name: 'children')
      final List<GroupHierarchyNode> children = const []})
      : _children = children;

  factory _$GroupHierarchyNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupHierarchyNodeImplFromJson(json);

  @override
  @JsonKey(name: 'group')
  final GroupData group;
  final List<GroupHierarchyNode> _children;
  @override
  @JsonKey(name: 'children')
  List<GroupHierarchyNode> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'GroupHierarchyNode(group: $group, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupHierarchyNodeImpl &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, group, const DeepCollectionEquality().hash(_children));

  /// Create a copy of GroupHierarchyNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupHierarchyNodeImplCopyWith<_$GroupHierarchyNodeImpl> get copyWith =>
      __$$GroupHierarchyNodeImplCopyWithImpl<_$GroupHierarchyNodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupHierarchyNodeImplToJson(
      this,
    );
  }
}

abstract class _GroupHierarchyNode implements GroupHierarchyNode {
  const factory _GroupHierarchyNode(
          {@JsonKey(name: 'group') required final GroupData group,
          @JsonKey(name: 'children') final List<GroupHierarchyNode> children}) =
      _$GroupHierarchyNodeImpl;

  factory _GroupHierarchyNode.fromJson(Map<String, dynamic> json) =
      _$GroupHierarchyNodeImpl.fromJson;

  @override
  @JsonKey(name: 'group')
  GroupData get group;
  @override
  @JsonKey(name: 'children')
  List<GroupHierarchyNode> get children;

  /// Create a copy of GroupHierarchyNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupHierarchyNodeImplCopyWith<_$GroupHierarchyNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupWithUsers _$GroupWithUsersFromJson(Map<String, dynamic> json) {
  return _GroupWithUsers.fromJson(json);
}

/// @nodoc
mixin _$GroupWithUsers {
  @JsonKey(name: 'group')
  GroupData get group => throw _privateConstructorUsedError;
  @JsonKey(name: 'children')
  List<UserInfoData> get children => throw _privateConstructorUsedError;

  /// Serializes this GroupWithUsers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupWithUsers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupWithUsersCopyWith<GroupWithUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupWithUsersCopyWith<$Res> {
  factory $GroupWithUsersCopyWith(
          GroupWithUsers value, $Res Function(GroupWithUsers) then) =
      _$GroupWithUsersCopyWithImpl<$Res, GroupWithUsers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group') GroupData group,
      @JsonKey(name: 'children') List<UserInfoData> children});

  $GroupDataCopyWith<$Res> get group;
}

/// @nodoc
class _$GroupWithUsersCopyWithImpl<$Res, $Val extends GroupWithUsers>
    implements $GroupWithUsersCopyWith<$Res> {
  _$GroupWithUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupWithUsers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupData,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UserInfoData>,
    ) as $Val);
  }

  /// Create a copy of GroupWithUsers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupDataCopyWith<$Res> get group {
    return $GroupDataCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupWithUsersImplCopyWith<$Res>
    implements $GroupWithUsersCopyWith<$Res> {
  factory _$$GroupWithUsersImplCopyWith(_$GroupWithUsersImpl value,
          $Res Function(_$GroupWithUsersImpl) then) =
      __$$GroupWithUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group') GroupData group,
      @JsonKey(name: 'children') List<UserInfoData> children});

  @override
  $GroupDataCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupWithUsersImplCopyWithImpl<$Res>
    extends _$GroupWithUsersCopyWithImpl<$Res, _$GroupWithUsersImpl>
    implements _$$GroupWithUsersImplCopyWith<$Res> {
  __$$GroupWithUsersImplCopyWithImpl(
      _$GroupWithUsersImpl _value, $Res Function(_$GroupWithUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupWithUsers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? children = null,
  }) {
    return _then(_$GroupWithUsersImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupData,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UserInfoData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupWithUsersImpl implements _GroupWithUsers {
  const _$GroupWithUsersImpl(
      {@JsonKey(name: 'group') required this.group,
      @JsonKey(name: 'children') final List<UserInfoData> children = const []})
      : _children = children;

  factory _$GroupWithUsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupWithUsersImplFromJson(json);

  @override
  @JsonKey(name: 'group')
  final GroupData group;
  final List<UserInfoData> _children;
  @override
  @JsonKey(name: 'children')
  List<UserInfoData> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'GroupWithUsers(group: $group, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupWithUsersImpl &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, group, const DeepCollectionEquality().hash(_children));

  /// Create a copy of GroupWithUsers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupWithUsersImplCopyWith<_$GroupWithUsersImpl> get copyWith =>
      __$$GroupWithUsersImplCopyWithImpl<_$GroupWithUsersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupWithUsersImplToJson(
      this,
    );
  }
}

abstract class _GroupWithUsers implements GroupWithUsers {
  const factory _GroupWithUsers(
          {@JsonKey(name: 'group') required final GroupData group,
          @JsonKey(name: 'children') final List<UserInfoData> children}) =
      _$GroupWithUsersImpl;

  factory _GroupWithUsers.fromJson(Map<String, dynamic> json) =
      _$GroupWithUsersImpl.fromJson;

  @override
  @JsonKey(name: 'group')
  GroupData get group;
  @override
  @JsonKey(name: 'children')
  List<UserInfoData> get children;

  /// Create a copy of GroupWithUsers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupWithUsersImplCopyWith<_$GroupWithUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
