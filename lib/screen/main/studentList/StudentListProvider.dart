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

  StudentListState({
    this.studentList = const [],
    this.classroomList = const [],
  });

  StudentListState copyWith({
    List<StudentListResponse>? studentList,
    List<ClassroomListResponse>? classroomList,
  }) {
    return StudentListState(
      studentList: List.unmodifiable(studentList ?? this.studentList),
      classroomList: List.unmodifiable(classroomList ?? this.classroomList),
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

  void clearStudentList(){
    state = state.copyWith(
      studentList: [],
    );
  }

  Future<List<StudentListResponse>> getStudentList({required int classroomsId}) async {

    final response = await apiManager.getStudentList(token, classroomsId: classroomsId);

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
