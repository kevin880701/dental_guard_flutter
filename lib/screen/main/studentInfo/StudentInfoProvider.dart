import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/provider/UserProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentInfoState {
  final List<TeethRecordsResponse> teethRecords;

  StudentInfoState({
    this.teethRecords = const [],
  });

  StudentInfoState copyWith({
    List<TeethRecordsResponse>? teethRecords,
  }) {
    return StudentInfoState(
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

  Future<List<TeethRecordsResponse>> getTeethRecords({required int studentId}) async {

    final response = await apiManager.getTeethRecords(token, studentId: studentId);

    state = state.copyWith(
      teethRecords: response,
    );
    return response;
  }
}
