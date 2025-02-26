import 'dart:io';

import 'package:dental_guard_flutter/data/response/login/LoginResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/screen/main/studentInfo/StudentInfoProvider.dart';
import 'package:dental_guard_flutter/utils/AppLog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final updateProvider = StateNotifierProvider<UpdateNotifier, UpdateState>((ref) {
  return UpdateNotifier(ref);
});

class UpdateState {
  final DateTime? recordUpdated;

  UpdateState({
    this.recordUpdated,
  });

  UpdateState copyWith({
    DateTime? recordUpdated,
  }) {
    return UpdateState(
      recordUpdated: recordUpdated ?? this.recordUpdated,
    );
  }
}

class UpdateNotifier extends StateNotifier<UpdateState> {
  UpdateNotifier(this.ref) : super(UpdateState()) {
  }
  final Ref ref;


  DateTime recordUpdated() {
    state = state.copyWith(recordUpdated: DateTime.now());
    ref.read(studentInfoProvider.notifier).getTeethRecords();
    return DateTime.now();
  }

}
