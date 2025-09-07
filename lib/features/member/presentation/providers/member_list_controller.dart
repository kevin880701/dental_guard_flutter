
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../organization/application/organization_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../organization/data/models/response/group_with_member_count/group_with_member_count_data.dart';
import '../../../organization/data/models/response/group_with_user_type/group_with_user_type_data.dart';

part 'member_list_controller.freezed.dart';

@freezed
class MemberListState with _$MemberListState {
  const factory MemberListState({
    GroupWithUserTypeData? group,
    @Default([]) List<UserInfoData> users,
  }) = _MemberListState;
}

final memberListControllerProvider =
StateNotifierProvider.autoDispose<MemberListController, MemberListState>(
        (ref) => MemberListController(ref));

class MemberListController extends StateNotifier<MemberListState> {
  final Ref ref;

  MemberListController(this.ref) : super(const MemberListState()){
    // 監聽 organizationControllerProvider 的變化
    // ref.listen<OrganizationState>(organizationControllerProvider, (prev, next) {
    //   final prevGroups = prev?.groupsManageData?.members;
    //   final nextGroups = next.groupsManageData?.members;
    //
    //   if (prevGroups != nextGroups) {
    //     loadMembersByGroupId();
    //   }
    // });
  }

  void setGroup(GroupWithUserTypeData group) {
    state = state.copyWith(group: group);
  }

  Future<void> loadMembersByGroupId() async {
    List<UserInfoData> members = (state.group != null)
        ? (await ref.read(organizationControllerProvider.notifier).loadGroupUsers(state.group!.id))
        :[];

      state = state.copyWith(users: members);
  }

  void updateUsers(List<UserInfoData> updatedUsers) {
    final updatedUsersMap = {for (var user in updatedUsers) user.id: user};

    final newUsers = state.users.map((user) {
      if (updatedUsersMap.containsKey(user.id)) {
        return updatedUsersMap[user.id]!;
      }
      return user;
    }).toList();

    state = state.copyWith(users: newUsers);
  }

  void clear() {
    state = const MemberListState();
  }
}
