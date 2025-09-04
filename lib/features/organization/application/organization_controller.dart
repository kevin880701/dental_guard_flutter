
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/app_log.dart';
import '../../../features/auth/data/models/response/user_info/user_info_data.dart';
import '../data/models/request/group_member/group_member_request.dart';
import '../data/models/response/group/group_data.dart';
import '../data/models/response/groups_manage/groups_manage_data.dart';
import 'organization_usecases_provider.dart';

part 'organization_controller.freezed.dart';

final organizationControllerProvider =
StateNotifierProvider<OrganizationController, OrganizationState>(
      (ref) => OrganizationController(ref),
);

@freezed
class OrganizationState with _$OrganizationState {
  const factory OrganizationState({
    GroupsManageData? groupsManageData,
    List<GroupData>? allParentGroups,
  }) = _OrganizationState;
}

class OrganizationController extends StateNotifier<OrganizationState> {
  final Ref ref;

  OrganizationController(this.ref) : super(const OrganizationState());

  /// 建立群組
  Future<GroupData?> createGroup({
    required String organizationId,
    required String groupName,
    required String userId,
  }) async {
    try {
      final useCase = ref.read(createGroupUseCaseProvider);
      return await useCase(
          organizationId: organizationId, groupName: groupName, userId: userId);
    } catch (e, st) {
      AppLog.e('建立群組失敗: $e\n$st');
      return null;
    }
  }

  /// 新增群組成員
  Future<bool> addGroupMember(GroupMemberRequest request) async {
    try {
      final useCase = ref.read(addGroupMemberUseCaseProvider);
      return await useCase(request);
    } catch (e, st) {
      AppLog.e('新增群組成員失敗: $e\n$st');
      return false;
    }
  }

  /// 移除群組成員
  Future<bool> removeGroupMember(GroupMemberRequest request) async {
    try {
      final useCase = ref.read(removeGroupMemberUseCaseProvider);
      return await useCase(request);
    } catch (e, st) {
      AppLog.e('移除群組成員失敗: $e\n$st');
      return false;
    }
  }

  /// 查詢群組成員
  Future<List<UserInfoData>> loadGroupUsers(String groupId) async {
    try {
      final useCase = ref.read(getGroupUsersUseCaseProvider);
      final users = await useCase(groupId);
      return users;
    } catch (e, st) {
      AppLog.e('載入群組成員失敗: $e\n$st');
    }
    return [];
  }

  /// 查詢指定群組
  Future<GroupData?> loadGroupById(String groupId) async {
    try {
      final useCase = ref.read(getGroupByIdUseCaseProvider);
      final group = await useCase(groupId);
      return group;
    } catch (e, st) {
      AppLog.e('查詢群組失敗: $e\n$st');
    }
    return null;
  }

  /// 清除狀態
  void clear() {
    state = const OrganizationState();
  }

  void updateGroupsById(List<GroupData> updatedGroups) {
    final currentData = state.groupsManageData;
    final currentParents = state.allParentGroups;

    if (currentData == null && currentParents == null) return;

    // 建立 id -> GroupData 的對照表
    final updatedMap = {for (var group in updatedGroups) group.id: group};

    // 更新 groupsManageData.members 中的 group
    final updatedMembers = currentData?.members.map((member) {
      if (updatedMap.containsKey(member.group.id)) {
        return member.copyWith(group: updatedMap[member.group.id]!);
      }
      return member;
    }).toList();

    // 更新 allParentGroups 中的 group
    final updatedParentGroups = currentParents?.map((group) {
      if (updatedMap.containsKey(group.id)) {
        return updatedMap[group.id]!;
      }
      return group;
    }).toList();

    // 更新 state
    state = state.copyWith(
      groupsManageData: currentData?.copyWith(members: updatedMembers ?? []),
      allParentGroups: updatedParentGroups ?? [],
    );
  }
}

List<GroupData> flattenHierarchy(List<GroupHierarchyNode>? nodes) {
  if (nodes == null) return [];

  final result = <GroupData>[];

  void walk(List<GroupHierarchyNode> list) {
    for (final node in list) {
      result.add(node.group);
      if (node.children.isNotEmpty) {
        walk(node.children);
      }
    }
  }

  walk(nodes);
  return result;
}