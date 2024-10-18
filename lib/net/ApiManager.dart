import 'package:dental_guard_flutter/data/request/login/LoginRequestBody.dart';
import 'package:dental_guard_flutter/data/response/BaseResponse/BaseResponse.dart';
import 'package:dental_guard_flutter/data/response/login/LoginResponse.dart';
import 'package:dental_guard_flutter/net/ApiEndPoint.dart';
import 'package:dental_guard_flutter/net/NetworkInterface.dart';
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
}
