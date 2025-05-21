import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/app_log.dart';
import '../../../features/auth/data/models/response/user_info/user_info_data.dart';
import '../data/models/request/create_group/create_group_request.dart';
import '../data/models/request/group_member/group_member_request.dart';
import '../data/models/response/group/group_data.dart';
import '../data/models/response/groups_manage/groups_manage_data.dart';
import 'organization_usecases_provider.dart';

part 'organization_controller.freezed.dart';

@freezed
class OrganizationState with _$OrganizationState {
  const factory OrganizationState({
    GroupsManageData? groupsManageData,
    List<UserInfoData>? groupUsers,
  }) = _OrganizationState;
}

final organizationControllerProvider =
    StateNotifierProvider<OrganizationController, OrganizationState>(
  (ref) => OrganizationController(ref),
);

class OrganizationController extends StateNotifier<OrganizationState> {
  final Ref ref;

  OrganizationController(this.ref) : super(const OrganizationState());

  /// 載入管理群組
  Future<void> loadManagedGroups() async {
    try {
      final getManagedGroupsUseCase = ref.read(getManagedGroupsUseCaseProvider);
      final data = await getManagedGroupsUseCase();
      state = state.copyWith(groupsManageData: data);
    } catch (e, st) {
      AppLog.e('載入群組失敗: $e\n$st');
    }
  }

  /// 建立群組
  Future<bool> createGroup(CreateGroupRequest request) async {
    try {
      final useCase = ref.read(createGroupUseCaseProvider);
      return await useCase(request);
    } catch (e, st) {
      AppLog.e('建立群組失敗: $e\n$st');
      return false;
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
      state = state.copyWith(groupUsers: users);
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
}
