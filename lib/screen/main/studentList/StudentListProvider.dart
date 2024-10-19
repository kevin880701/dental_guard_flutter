import 'dart:io';

import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/provider/UserProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentListState {
  final List<StudentListResponse> studentList;

  StudentListState({
    this.studentList = const [],
  });

  StudentListState copyWith({
    List<StudentListResponse>? studentList,
  }) {
    return StudentListState(
      studentList: List.unmodifiable(studentList ?? this.studentList),
    );
  }
}

final studentListProvider = StateNotifierProvider.autoDispose<StudentListNotifier, StudentListState>((ref) {
  return StudentListNotifier(ref);
});

class StudentListNotifier extends StateNotifier<StudentListState> {
  StudentListNotifier(this.ref) : super(StudentListState()) {
    token = ref.read(userProvider).loginResponse?.tokens.access ?? "";
    apiManager = ApiManager(ref);
  }

  final Ref ref;
  late final ApiManager apiManager;
  late String token = "";

  Future<List<StudentListResponse>> getStudentList({required int classroomsId}) async {

    final response = await apiManager.getStudentList(token, classroomsId: classroomsId);

    state = state.copyWith(
      studentList: response,
    );
    return response;
  }
}
