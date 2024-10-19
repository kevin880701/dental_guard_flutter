import 'dart:io';

import 'package:dental_guard_flutter/data/request/addStudent/AddStudentRequestBody.dart'
    as addStudent;
import 'package:dental_guard_flutter/data/request/login/LoginRequestBody.dart';
import 'package:dental_guard_flutter/data/response/BaseResponse/BaseResponse.dart';
import 'package:dental_guard_flutter/data/response/addStudent/AddStudentResponse.dart';
import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/data/response/login/LoginResponse.dart';
import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart';
import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart';
import 'package:dental_guard_flutter/net/ApiEndPoint.dart';
import 'package:dental_guard_flutter/net/NetworkInterface.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_parser/http_parser.dart';

class ApiManager {
  ApiManager(this.ref);

  final NetworkInterface _networkInterface = NetworkInterface();
  final Ref ref;

  Future<LoginResponse?> login(
      {required String username, required String password}) async {
    final body = LoginRequestBody(username: username, password: password);
    final response = await _networkInterface.post(
      url: ApiEndPoint.accountsLogin,
      body: body,
    );

    final baseResponse = BaseResponse<LoginResponse>.fromJson(
      response.data,
      (data) => LoginResponse.fromJson(data as Map<String, dynamic>),
    );

    if (baseResponse.returnCode == 0) {
      return baseResponse.data;
    } else {
      print('登入失敗: ${baseResponse.message}');
      return null;
    }
  }

  Future<List<StudentListResponse>> getStudentList(token,{required int classroomsId}) async {
    final response = await _networkInterface.get(
      userToken: token,
      url: ApiEndPoint.classroomsStudents(classroomsId
      ),
    );

    BaseResponse<List<StudentListResponse>> baseResponse =
        BaseResponse<List<StudentListResponse>>.fromJson(
      response.data,
      (data) => (data as List<dynamic>)
          .map((e) => StudentListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

    if (baseResponse.returnCode == 0) {
      return baseResponse.data;
    } else {
      return [];
    }
  }

  Future<AddStudentResponse?> postAddStudent(
    token, {
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
    final response = await _networkInterface.post(
      url: ApiEndPoint.accountsStudents,
      body: body,
      userToken: token,
    );

    final baseResponse = BaseResponse<AddStudentResponse>.fromJson(
      response.data,
      (data) => AddStudentResponse.fromJson(data as Map<String, dynamic>),
    );

    if (baseResponse.returnCode == 0){
      ref.read(pageProvider.notifier).showSuccess(baseResponse.message);
      return baseResponse.data;
    } else {
      ref.read(pageProvider.notifier).showError(baseResponse.message);
      return null;
    }
  }

  Future<List<TeethRecordsResponse>?> getTeethRecords(String token) async {
    try {
      // 發送 GET 請求
      final response = await _networkInterface.get(
        url: ApiEndPoint.apiTeethCleaningRecords,
      );

      // 確保 response 是 Map<String, dynamic> 格式的數據
      final jsonResponse = response.data as List<dynamic>;

      // 將每個元素轉換為 TeethRecordsResponse
      final records = jsonResponse
          .map((record) =>
              TeethRecordsResponse.fromJson(record as Map<String, dynamic>))
          .toList();

      return records;
    } catch (e) {
      return null;
    }
  }

  Future<AnalyzeTeethResponse?> analyzeTeeth(
      String token, {
        required File originalImage,
      }) async {
    try {
      // 構建 FormData，並添加圖片文件
      FormData formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          originalImage.path,
          filename: originalImage.path.split('/').last,
          contentType: MediaType('image', 'jpeg'), // 假設是JPEG圖片
        ),
      });

      final response = await _networkInterface.post(
        url: ApiEndPoint.apiAnalysis,
        body: formData,
        userToken: token,
        contentType: 'multipart/form-data',
      );

      final jsonResponse = response.data as Map<String, dynamic>;
      if (jsonResponse['returnCode'] == 0) {
        return AnalyzeTeethResponse.fromJson(jsonResponse['data']);
      } else {
        print('Error: ${jsonResponse['message']}');
        return null;
      }
    } catch (e) {
      print('Exception: $e');
      return null;
    }
  }
}
