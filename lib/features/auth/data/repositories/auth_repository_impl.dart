import '../datasources/auth_remote_datasource.dart';
import '../models/request/enter_verification_code/enter_verification_code_request.dart';
import '../models/request/login/login_request.dart';
import '../models/request/oauth_login_request/oauth_login_request.dart';
import '../models/request/refresh_token/refresh_token_request.dart';
import '../models/request/send_verification_code/send_verification_code_request.dart';
import '../models/request/set_password/set_password_request.dart';
import '../models/request/set_user_profile/set_user_profile_request.dart';
import '../models/response/login/login_data.dart';
import '../models/response/refresh_token/refresh_token_data.dart';
import '../models/response/user_info/user_info_data.dart';

abstract class AuthRepository {
  Future<LoginData> login(LoginRequest loginRequest);
  Future<UserInfoData> getUserInfo();
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<LoginData> login(LoginRequest loginRequest) async {
    return await remoteDataSource.login(loginRequest);
  }

  @override
  Future<UserInfoData> getUserInfo() async {
    return await remoteDataSource.getUserInfo();
  }
}
