import '../../data/models/response/user_info/user_info_data.dart';
import '../../data/repositories/auth_repository_impl.dart';

class GetUserInfoUseCase {
  final AuthRepository authRepository;

  GetUserInfoUseCase(this.authRepository);

  Future<UserInfoData?> execute() async {
    final userInfo = await authRepository.getUserInfo();
    return userInfo;
  }
}
