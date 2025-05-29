
import '../../../../core/models/api_response.dart';
import '../../data/models/request/login/login_request.dart';
import '../../data/models/response/login/login_data.dart';
import '../../data/repositories/auth_repository_impl.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  Future<ApiResponse<LoginData?>> execute(String email, String password) async {
    final loginData = await authRepository.login(LoginRequest(username: email, password: password));
    return loginData;
  }
}
