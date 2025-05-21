import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../auth/data/models/response/user_info/user_info_data.dart';
import '../group/group_data.dart';

part 'groups_manage_data.freezed.dart';
part 'groups_manage_data.g.dart';

@freezed
class GroupsManageData with _$GroupsManageData {
  const factory GroupsManageData({
    @JsonKey(name: 'hierarchy') required List<GroupHierarchyNode> hierarchy,
    @JsonKey(name: 'members') required List<GroupWithUsers> members,
  }) = _GroupsManageData;

  factory GroupsManageData.fromJson(Map<String, dynamic> json) =>
      _$GroupsManageDataFromJson(json);
}

@freezed
class GroupHierarchyNode with _$GroupHierarchyNode {
  const factory GroupHierarchyNode({
    @JsonKey(name: 'group') required GroupData group,
    @JsonKey(name: 'children') required List<GroupHierarchyNode> children,
  }) = _GroupHierarchyNode;

  factory GroupHierarchyNode.fromJson(Map<String, dynamic> json) =>
      _$GroupHierarchyNodeFromJson(json);
}

@freezed
class GroupWithUsers with _$GroupWithUsers {
  const factory GroupWithUsers({
    @JsonKey(name: 'group') required GroupData group,
    @JsonKey(name: 'children') required List<UserInfoData> children,
  }) = _GroupWithUsers;

  factory GroupWithUsers.fromJson(Map<String, dynamic> json) =>
      _$GroupWithUsersFromJson(json);
}
