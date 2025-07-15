import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/providers/refresh_controller.dart';
import '../../../../core/utils/app_log.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../organization/application/organization_controller.dart';
import '../../../teeth_record/application/teeth_record_usecases_provider.dart';
import '../../../teeth_record/data/models/response/brushing_record/brushing_record_data.dart';

part 'member_main_controller.freezed.dart';

@freezed
class MemberMainState with _$MemberMainState {
  const factory MemberMainState({
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

  Future<void> loadUserBrushingRecords() async {
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
      final useCase = ref.read(getMultiUserBrushingRecordsUseCaseProvider);
      final DateTime startTime = DateTime.utc(2000, 1, 1);
      final DateTime endTime = DateTime.utc(2099, 12, 31);

      final result = await useCase(
        userIds: [state.user!.id],
        startDate: startTime.toIsoDateTime(),
        endDate: endTime.toIsoDateTime(),
      );


      state = state.copyWith(brushingRecords: result.first.brushingRecords ?? [], isLoading: false);
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
