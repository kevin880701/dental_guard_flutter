import '../../../../core/models/api_response.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/request/firebase_oauth_login_request/firebase_oauth_login_request.dart';
import '../models/request/login/login_request.dart';
import '../models/request/updateUserProfile/update_user_profile_request.dart';
import '../models/response/login/login_data.dart';
import '../models/response/user_info/user_info_data.dart';

abstract class AuthRepository {
  Future<ApiResponse<LoginData?>> login(LoginRequest loginRequest);
  Future<ApiResponse<LoginData?>> firebaseOAuthLogin(FirebaseOAuthLoginRequest request);
  Future<UserInfoData?> getUserInfo();
  Future<UserInfoData?> updateUserProfile(UpdateUserProfileRequest request);
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<ApiResponse<LoginData?>> login(LoginRequest loginRequest) async {
    return await remoteDataSource.login(loginRequest);
  }

  @override
  Future<ApiResponse<LoginData?>> firebaseOAuthLogin(FirebaseOAuthLoginRequest request) async {
    return await remoteDataSource.firebaseOAuthLogin(request);
  }

  @override
  Future<UserInfoData?> getUserInfo() async {
    return await remoteDataSource.getUserInfo();
  }

  @override
  Future<UserInfoData?> updateUserProfile(UpdateUserProfileRequest request) async {
    return await remoteDataSource.updateUserProfile(request);
  }
}
