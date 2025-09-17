import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/providers/refresh_controller.dart';
import '../../../../core/utils/app_log.dart';
import '../../../auth/application/auth_controller.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../organization/application/organization_controller.dart';
import '../../../organization/data/models/response/group_with_member_count/group_with_member_count_data.dart';
import '../../../organization/data/models/response/group_with_user_type/group_with_user_type_data.dart';
import '../../../teeth_record/application/teeth_record_usecases_provider.dart';
import '../../../teeth_record/data/models/response/brushing_record/brushing_record_data.dart';

part 'member_main_controller.freezed.dart';

@freezed
class MemberMainState with _$MemberMainState {
  const factory MemberMainState({
    GroupWithUserTypeData? group,
    UserInfoData? user,
    required List<BrushingRecordData> brushingRecords,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(99) int refreshKey
  }) = _MemberMainState;
}

final memberMainControllerProvider =
StateNotifierProvider.autoDispose<MemberInfoController, MemberMainState>(
      (ref) => MemberInfoController(ref),
);

class MemberInfoController extends StateNotifier<MemberMainState> {
  final Ref ref;

  MemberInfoController(this.ref) : super(const MemberMainState(brushingRecords: [])) {
    // 監聽 organizationControllerProvider 的變化
    ref.listen<OrganizationState>(organizationControllerProvider, (prev, next) {
      final userId = state.user?.id;
      final prevGroups = prev?.groupsManageData?.members;
      final nextGroups = next.groupsManageData?.members;

      // 當群組成員資料變動且有設定 user 時，重新取得該 user 的刷牙紀錄
      if (userId != null && prevGroups != nextGroups) {
        loadUserBrushingRecords();
      }
    });
  }

  void refresh() {
    state = state.copyWith(
      refreshKey: DateTime.now().millisecondsSinceEpoch,
    );

    ref.read(refreshControllerProvider.notifier).refresh();
  }

  void setUser(UserInfoData user) {
    state = state.copyWith(user: user);
  }

  void setGroup(GroupWithUserTypeData group) {
    state = state.copyWith(group: group);
  }

  /// 檢查是否可以編輯成員資訊
  /// 兩種情況下可以編輯：
  /// 1. 用戶是管理員（admin/manager）
  /// 2. 用戶在編輯自己的資料
  bool canEditMember() {
    // 取得當前登入用戶的資訊
    final currentUser = ref.read(authControllerProvider).userInfoData;
    final currentGroup = state.group;
    final targetUser = state.user;

    // 如果沒有必要的資訊，預設允許編輯（向後兼容）
    if (currentUser == null || currentGroup == null || targetUser == null) {
      return true;
    }

    // 檢查是否為管理員（從群組的 type 欄位判斷）
    final userType = currentGroup.type?.toLowerCase();
    final isAdmin = userType == 'admin' || userType == 'manager';

    // 檢查是否為本人
    final isSelf = currentUser.id == targetUser.id;

    // 管理員或本人都可以編輯
    return isAdmin || isSelf;
  }


  Future<void> loadUserBrushingRecords() async {
    final String timeZone = await FlutterTimezone.getLocalTimezone();
    final userId = state.user?.id;
    if (userId == null) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '找不到使用者',
      );
      return;
    }
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final useCase = ref.read(getUsersRecordsSearchUseCaseProvider);
      final DateTime startTime = DateTime.utc(2000, 1, 1);
      final DateTime endTime = DateTime.utc(2099, 12, 31);

      final result = await useCase(
        userIds: [state.user!.id],
        startDate: startTime.toIsoDateTime(),
        endDate: endTime.toIsoDateTime(),
        timeZone: timeZone,
      );

      final originalRecords = result?.records?.first.brushingRecords ?? [];
      final sortedRecords = [...originalRecords]
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

      state = state.copyWith(brushingRecords: sortedRecords, isLoading: false);
    } catch (e, st) {
      AppLog.e('取得潔牙紀錄失敗: $e\n$st');
      state = state.copyWith(
        isLoading: false,
        errorMessage: '無法取得資料',
      );
    }
  }

  void appendBrushingRecords(List<BrushingRecordData> newRecords) {
    state = state.copyWith(
      brushingRecords: [
        ...state.brushingRecords,
        ...newRecords,
      ],
    );
  }

  void clear() {
    state = const MemberMainState(brushingRecords: []);
  }
}
