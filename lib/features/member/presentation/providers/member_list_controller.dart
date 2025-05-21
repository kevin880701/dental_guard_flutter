import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../organization/application/organization_controller.dart';

final memberListControllerProvider =
    StateNotifierProvider.autoDispose<MemberListController, List<UserInfoData>>(
        (ref) {
  return MemberListController(ref);
});

class MemberListController extends StateNotifier<List<UserInfoData>> {
  final Ref ref;

  MemberListController(this.ref) : super([]);

  Future<void> loadMembersByGroupId(String groupId) async {
    final members =
        ref.read(organizationControllerProvider).groupsManageData?.members;
    if (members == null) return;

    final target = members.firstWhereOrNull(
      (element) => element.group.id == groupId,
    );
    if (target != null) {
      state = target.children;
    }
  }

  void clear() {
    state = [];
  }
}
