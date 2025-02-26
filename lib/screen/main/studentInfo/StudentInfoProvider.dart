import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/provider/UserProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentInfoState {
  final int studentId;
  final List<TeethRecordsResponse> teethRecords;

  StudentInfoState({
  this.studentId = 0,
  this.teethRecords = const [],
  });

  StudentInfoState copyWith({
    int? studentId,
    List<TeethRecordsResponse>? teethRecords,
  }) {
    return StudentInfoState(
      studentId: studentId ?? this.studentId,
      teethRecords: List.unmodifiable(teethRecords ?? this.teethRecords),
    );
  }
}

final studentInfoProvider = StateNotifierProvider.autoDispose<StudentInfoNotifier, StudentInfoState>((ref) {
  return StudentInfoNotifier(ref);
});

class StudentInfoNotifier extends StateNotifier<StudentInfoState> {
  StudentInfoNotifier(this.ref) : super(StudentInfoState()) {
    token = ref.read(userProvider).loginResponse?.tokens.access ?? "";
    apiManager = ApiManager(ref);
  }

  final Ref ref;
  late final ApiManager apiManager;
  late String token = "";

  Future<void> updateStudentId(int studentId) async {
    state = state.copyWith(
      studentId: studentId,
    );
  }

  Future<List<TeethRecordsResponse>> getTeethRecords() async {

    final response = await apiManager.getTeethRecords(token, studentId: state.studentId);

    state = state.copyWith(
      teethRecords: response,
    );
    return response;
  }
}
