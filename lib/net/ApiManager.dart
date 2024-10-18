import 'dart:convert';

import 'package:dental_guard_flutter/data/request/login/LoginRequestBody.dart';
import 'package:dental_guard_flutter/data/response/BaseResponse/BaseResponse.dart';
import 'package:dental_guard_flutter/data/response/login/LoginResponse.dart';
import 'package:dental_guard_flutter/net/ApiEndPoint.dart';
import 'package:dental_guard_flutter/net/NetworkInterface.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApiManager {
  ApiManager(this.ref);

  final NetworkInterface _networkInterface = NetworkInterface();
  final Ref ref;

  Future<LoginResponse?> login({required String username, required String password}) async {
    final body = LoginRequestBody(username: username, password: password);
    final response = await _networkInterface.post(
      url: ApiEndPoint.accountsLogin,
      body: body,
    );

    // 檢查是否是來自 http 庫的響應對象
      // 將 response.body 解析為 Map<String, dynamic>
      final jsonResponse = json.decode(response.data) as Map<String, dynamic>;

      // 使用 BaseResponse<LoginResponse> 來解析數據
      final baseResponse = BaseResponse<LoginResponse>.fromJson(
        jsonResponse,
            (data) => LoginResponse.fromJson(data as Map<String, dynamic>),
      );
      return baseResponse.data as LoginResponse;
  }
}
