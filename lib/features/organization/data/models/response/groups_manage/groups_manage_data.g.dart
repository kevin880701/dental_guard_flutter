// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_manage_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupsManageDataImpl _$$GroupsManageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupsManageDataImpl(
      hierarchy: (json['hierarchy'] as List<dynamic>)
          .map((e) => GroupHierarchyNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>)
          .map((e) => GroupWithUsers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupsManageDataImplToJson(
        _$GroupsManageDataImpl instance) =>
    <String, dynamic>{
      'hierarchy': instance.hierarchy,
      'members': instance.members,
    };

_$GroupHierarchyNodeImpl _$$GroupHierarchyNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupHierarchyNodeImpl(
      group: GroupData.fromJson(json['group'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>)
          .map((e) => GroupHierarchyNode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupHierarchyNodeImplToJson(
        _$GroupHierarchyNodeImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'children': instance.children,
    };

_$GroupWithUsersImpl _$$GroupWithUsersImplFromJson(Map<String, dynamic> json) =>
    _$GroupWithUsersImpl(
      group: GroupData.fromJson(json['group'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>)
          .map((e) => UserInfoData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupWithUsersImplToJson(
        _$GroupWithUsersImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'children': instance.children,
    };
