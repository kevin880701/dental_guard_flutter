import 'package:dental_guard_flutter/data/request/user/login/UserLoginRequestBody.dart';
import 'package:dental_guard_flutter/data/response/user/login/LoginResponse.dart';
import 'package:dental_guard_flutter/net/ApiEndPoint.dart';
import 'package:dental_guard_flutter/net/NetworkInterface.dart';

class UserApiManager {
  UserApiManager._();

  static final UserApiManager instance = UserApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<LoginResponse?> login({required String account, required String password}) async {
    final response = await _networkInterface.post(
      url: ApiEndPoint.userLogin,
      body: UserLoginRequestBody(account: account, psw: password),
    );
    final loginResponse = LoginResponse.fromJson(response.data as Map<String, dynamic>);
    return loginResponse;
  }
}
