import 'dart:io';

import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/data/response/classroomList/ClassroomListResponse.dart';
import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/provider/UserProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentListState {
  final List<StudentListResponse> studentList;
  final List<ClassroomListResponse> classroomList;
  final int classroomsId;

  StudentListState({
    this.studentList = const [],
    this.classroomList = const [],
    this.classroomsId = -1,
  });

  StudentListState copyWith({
    List<StudentListResponse>? studentList,
    List<ClassroomListResponse>? classroomList,
    int? classroomsId,
  }) {
    return StudentListState(
      studentList: List.unmodifiable(studentList ?? this.studentList),
      classroomList: List.unmodifiable(classroomList ?? this.classroomList),
      classroomsId: classroomsId ?? this.classroomsId,
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

  Future<void> updateClassroomsId(int classroomsId) async {
    state = state.copyWith(
      classroomsId: classroomsId,
    );
  }

  void clearStudentList(){
    state = state.copyWith(
      studentList: [],
      classroomsId: -1
    );
  }

  Future<List<StudentListResponse>> getStudentList() async {

    final response = await apiManager.getStudentList(token, classroomsId: state.classroomsId);

    state = state.copyWith(
      studentList: response,
    );
    return response;
  }

  Future<List<ClassroomListResponse>> getClassroomList() async {

    final response = await apiManager.getClassroomList(token);

    state = state.copyWith(
      classroomList: response,
    );
    return response;
  }
}
