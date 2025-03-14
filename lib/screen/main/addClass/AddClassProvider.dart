import 'dart:io';

import 'package:dental_guard_flutter/data/request/addClass/AddClassRequestBody.dart';
import 'package:dental_guard_flutter/data/response/classroomList/ClassroomListResponse.dart';
import 'package:dental_guard_flutter/data/response/teacherInfo/TeacherInfoResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/provider/UpdateStateProvider.dart';
import 'package:dental_guard_flutter/provider/UserProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddClassState {
  final TeacherInfoResponse? teacherInfo;

  AddClassState({
    this.teacherInfo,
  });

  AddClassState copyWith({
    TeacherInfoResponse? teacherInfo,
  }) {
    return AddClassState(
      teacherInfo: teacherInfo ?? this.teacherInfo,
    );
  }
}

final addClassProvider =
    StateNotifierProvider.autoDispose<AddClassNotifier, AddClassState>(
        (ref) {
  return AddClassNotifier(ref);
});

class AddClassNotifier extends StateNotifier<AddClassState> {
  AddClassNotifier(this.ref) : super(AddClassState()) {
    token = ref.read(userProvider).loginResponse?.tokens.access ?? "";
    apiManager = ApiManager(ref);
  }

  final Ref ref;
  late final ApiManager apiManager;
  late String token = "";

  Future<bool> getTeacherInfo() async {

    final response = await apiManager.getTeacherInfo(token);

    if(response != null){
      state = state.copyWith(
        teacherInfo: response,
      );
      return true;
    }else{
      return false;
    }
  }

  Future<bool> addClass({
    required String grade,
    required String className,
  }) async {
    final body = AddClassRequestBody(school: state.teacherInfo!.school, grade: grade, className: className, teachers: [state.teacherInfo!.id]);
    final response = await apiManager.postAddClass(
      token,
      addClassRequestBody: body,
    );
    ref.read(updateProvider.notifier).classUpdated();

    return response;
  }
}
