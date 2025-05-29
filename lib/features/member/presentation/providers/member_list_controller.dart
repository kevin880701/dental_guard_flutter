import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../organization/application/organization_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';

part 'member_list_controller.freezed.dart';

@freezed
class MemberListState with _$MemberListState {
  const factory MemberListState({
    @Default('') String groupId,
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

  void setGroupId(String groupId) {
    state = state.copyWith(groupId: groupId);
  }

  Future<void> loadMembersByGroupId() async {
    final members =
        ref.read(organizationControllerProvider).groupsManageData?.members;
    if (members == null) return;

    final target = members.firstWhereOrNull(
          (element) => element.group.id == state.groupId,
    );
    if (target != null) {
      state = state.copyWith(groupId: state.groupId, users: target.children);
    }
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
