import 'dart:io';
import 'package:dental_guard_flutter/data/request/addStudent/AddStudentRequestBody.dart'
as addStudent;
import 'package:dental_guard_flutter/data/request/createTeethRecord/CreateTeethRecordRequestBody.dart';
import 'package:dental_guard_flutter/data/request/login/LoginRequestBody.dart';
import 'package:dental_guard_flutter/data/response/BaseResponse/BaseResponse.dart';
import 'package:dental_guard_flutter/data/response/addStudent/AddStudentResponse.dart';
import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/data/response/classroomList/ClassroomListResponse.dart';
import 'package:dental_guard_flutter/data/response/createTeethRecord/CreateTeethRecordResponse.dart';
import 'package:dental_guard_flutter/data/response/login/LoginResponse.dart';
import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart';
import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart';
import 'package:dental_guard_flutter/net/ApiEndPoint.dart';
import 'package:dental_guard_flutter/net/NetworkInterface.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/utils/AppLog.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_parser/http_parser.dart';

class ApiManager {
  ApiManager(this.ref);

  final NetworkInterface _networkInterface = NetworkInterface();
  final Ref ref;

  Future<LoginResponse?> login({required String username, required String password}) async {
    final body = LoginRequestBody(username: username, password: password);
    final response = await _networkInterface.request(
      url: ApiEndPoint.accountsLogin,
      method: HttpMethod.POST,
      body: body,
    );

    final baseResponse = BaseResponse<LoginResponse>.fromJson(
      response.data,
          (data) => LoginResponse.fromJson(data as Map<String, dynamic>),
    );

    if (baseResponse.returnCode == 0) {
      ref.read(pageProvider.notifier).hideLoading();
      ref.read(pageProvider.notifier).showSuccess(baseResponse.message);
      return baseResponse.data;
    } else {
      ref.read(pageProvider.notifier).showError(baseResponse.message);
      return null;
    }
  }

  Future<List<StudentListResponse>> getStudentList(String token, {required int classroomsId}) async {
    final response = await _networkInterface.request(
      method: HttpMethod.GET,
      userToken: token,
      url: ApiEndPoint.classroomsStudents(classroomsId),
    );

    BaseResponse<List<StudentListResponse>> baseResponse =
    BaseResponse<List<StudentListResponse>>.fromJson(
      response.data,
          (data) => (data as List<dynamic>)
          .map((e) => StudentListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

    return baseResponse.returnCode == 0 ? baseResponse.data : [];
  }

  Future<AddStudentResponse?> postAddStudent(
      String token, {
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
    final body = addStudent.AddStudentRequestBody(
      user: addStudent.User(
        username: username,
        fullName: fullName,
        password: password,
        email: email,
        lineId: lineId,
      ),
      studentId: studentId,
      school: school,
      classroom: classroom,
      birth: birth,
      gender: gender,
    );
    final response = await _networkInterface.request(
      url: ApiEndPoint.accountsStudents,
      method: HttpMethod.POST,
      body: body,
      userToken: token,
    );

    final baseResponse = BaseResponse<AddStudentResponse>.fromJson(
      response.data,
          (data) => AddStudentResponse.fromJson(data as Map<String, dynamic>),
    );

    if (baseResponse.returnCode == 0) {
      ref.read(pageProvider.notifier).showSuccess(baseResponse.message);
      return baseResponse.data;
    } else {
      ref.read(pageProvider.notifier).showError(baseResponse.message);
      return null;
    }
  }

  Future<List<TeethRecordsResponse>> getTeethRecords(String token, {required int studentId}) async {
    final response = await _networkInterface.request(
      method: HttpMethod.GET,
      userToken: token,
      url: ApiEndPoint.recordsStudents(studentId),
    );

    BaseResponse<List<TeethRecordsResponse>> baseResponse =
    BaseResponse<List<TeethRecordsResponse>>.fromJson(
      response.data,
          (data) => (data as List<dynamic>)
          .map((e) => TeethRecordsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

    return baseResponse.returnCode == 0 ? baseResponse.data : [];
  }

  Future<List<ClassroomListResponse>> getClassroomList(String token) async {
    final response = await _networkInterface.request(
      method: HttpMethod.GET,
      userToken: token,
      url: ApiEndPoint.accountsClassrooms,
    );

    BaseResponse<List<ClassroomListResponse>> baseResponse =
    BaseResponse<List<ClassroomListResponse>>.fromJson(
      response.data,
          (data) => (data as List<dynamic>)
          .map((e) => ClassroomListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

    if (baseResponse.returnCode == 0) {
      return baseResponse.data;
    } else {
      ref.read(pageProvider.notifier).showError(baseResponse.message);
      return [];
    }
  }

  Future<AnalyzeTeethResponse?> analyzeTeeth(String token, {required File originalImage}) async {
    try {
      ref.read(pageProvider.notifier).showLoading();

      FormData formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          originalImage.path,
          filename: 'originalImage',
          contentType: MediaType('image', 'jpeg'),
        ),
      });

      final response = await _networkInterface.request(
        method: HttpMethod.POST,
        url: ApiEndPoint.apiAnalysis,
        body: formData,
        userToken: token,
        contentType: 'multipart/form-data',
      );

      final analyzeTeethResponse = BaseResponse<AnalyzeTeethResponse>.fromJson(
        response.data,
            (data) => AnalyzeTeethResponse.fromJson(data as Map<String, dynamic>),
      );

      ref.read(pageProvider.notifier).hideLoading();
      ref.read(pageProvider.notifier).showSuccess(analyzeTeethResponse.message);
      return analyzeTeethResponse.data;
    } catch (e) {
      AppLog.e('$e');
      ref.read(pageProvider.notifier).hideLoading();
      return null;
    }
  }

  Future<CreateTeethRecordResponse?> createTeethRecords(
      String token, {
        required int studentId,
        required String imagesPath,
        required String dentalPlaqueCount,
      }) async {
    final body = CreateTeethRecordRequestBody(
      student: studentId,
      imagesPath: imagesPath,
      dentalPlaqueCount: dentalPlaqueCount,
    );

    final response = await _networkInterface.request(
      method: HttpMethod.POST,
      userToken: token,
      url: ApiEndPoint.apiRecordsCreate,
      body: body,
    );

    final baseResponse = BaseResponse<CreateTeethRecordResponse>.fromJson(
      response.data,
          (data) => CreateTeethRecordResponse.fromJson(data as Map<String, dynamic>),
    );

    return baseResponse.returnCode == 0 ? baseResponse.data : null;
  }
}
