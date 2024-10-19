import 'dart:io';

import 'package:dental_guard_flutter/data/response/addStudent/AddStudentResponse.dart';
import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/provider/UserProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddStudentState {}

final addStudentProvider =
    StateNotifierProvider.autoDispose<AddStudentNotifier, AddStudentState>(
        (ref) {
  return AddStudentNotifier(ref);
});

class AddStudentNotifier extends StateNotifier<AddStudentState> {
  AddStudentNotifier(this.ref) : super(AddStudentState()) {
    token = ref.read(userProvider).loginResponse?.tokens.access ?? "";
    apiManager = ApiManager(ref);
  }

  final Ref ref;
  late final ApiManager apiManager;
  late String token = "";

  Future<AddStudentResponse?> addStudent({
    required String username,
    required String fullName,
    required String password,
    required String email,
    required String lineId,
    required String studentId,
    required int school,
    required int classroom,
    required String birth,
    required String gender,
  }) async {
    final response = apiManager.postAddStudent(
      token,
      username: username,
      fullName: fullName,
      password: password,
      email: email,
      lineId: lineId,
      studentId: studentId,
      school: school,
      classroom: classroom,
      birth: birth,
      gender: gender,
    );

    return response;
  }
}
