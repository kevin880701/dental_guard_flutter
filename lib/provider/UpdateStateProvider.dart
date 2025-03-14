import 'dart:io';

import 'package:dental_guard_flutter/data/response/login/LoginResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/screen/main/studentInfo/StudentInfoProvider.dart';
import 'package:dental_guard_flutter/screen/main/studentList/StudentListProvider.dart';
import 'package:dental_guard_flutter/utils/AppLog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final updateProvider = StateNotifierProvider<UpdateNotifier, UpdateState>((ref) {
  return UpdateNotifier(ref);
});

class UpdateState {
  final DateTime? recordUpdated;
  final DateTime? studentRecordUpdated;
  final DateTime? classUpdated;

  UpdateState({
    this.recordUpdated,
    this.studentRecordUpdated,
    this.classUpdated,
  });

  UpdateState copyWith({
    DateTime? recordUpdated,
    DateTime? studentRecordUpdated,
    DateTime? classUpdated,
  }) {
    return UpdateState(
      recordUpdated: recordUpdated ?? this.recordUpdated,
      studentRecordUpdated: studentRecordUpdated ?? this.studentRecordUpdated,
      classUpdated: classUpdated ?? this.classUpdated,
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

  DateTime studentRecordUpdated() {
    state = state.copyWith(studentRecordUpdated: DateTime.now());
    ref.read(studentListProvider.notifier).getStudentList();
    return DateTime.now();
  }

  DateTime classUpdated() {
    state = state.copyWith(classUpdated: DateTime.now());
    ref.read(studentListProvider.notifier).getClassroomList();
    return DateTime.now();
  }
}
