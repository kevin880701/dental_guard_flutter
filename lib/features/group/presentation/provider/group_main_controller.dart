
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/providers/refresh_controller.dart';

part 'group_main_controller.freezed.dart';

final groupMainProvider = StateNotifierProvider.autoDispose<GroupMainControllerNotifier, GroupMainState>(
      (ref) => GroupMainControllerNotifier(ref),
);

@freezed
class GroupMainState with _$GroupMainState {
  const factory GroupMainState({
    @Default(99) int refreshKey
  }) = _GroupMainState;
}

class GroupMainControllerNotifier extends StateNotifier<GroupMainState> {
  final Ref ref;

  GroupMainControllerNotifier(this.ref) : super(const GroupMainState());

  void refresh() {
    state = state.copyWith(
      refreshKey: DateTime.now().millisecondsSinceEpoch,
    );

    ref.read(refreshControllerProvider.notifier).refresh();
  }
}