import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/app_log.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../teeth_record/application/teeth_record_usecases_provider.dart';
import '../../../teeth_record/data/models/response/brushing_record/brushing_record_data.dart';

part 'member_info_controller.freezed.dart';

@freezed
class MemberInfoState with _$MemberInfoState {
  const factory MemberInfoState({
    UserInfoData? user,
    required List<BrushingRecordData> brushingRecords,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MemberInfoState;
}

final memberInfoControllerProvider =
StateNotifierProvider.autoDispose<MemberInfoController, MemberInfoState>(
      (ref) => MemberInfoController(ref),
);

class MemberInfoController extends StateNotifier<MemberInfoState> {
  final Ref ref;

  MemberInfoController(this.ref)
      : super(const MemberInfoState(brushingRecords: []));

  void setUser(UserInfoData user) {
    state = state.copyWith(user: user);
  }

  Future<void> loadUserBrushingRecords(String userId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final useCase = ref.read(getUserBrushingRecordsUseCaseProvider);
      final records = await useCase(userId);
      state = state.copyWith(brushingRecords: records, isLoading: false);
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
    state = const MemberInfoState(brushingRecords: []);
  }
}
