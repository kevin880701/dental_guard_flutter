import '../../data/models/request/updateUserProfile/update_user_profile_request.dart';
import '../../data/models/response/user_info/user_info_data.dart';
import '../../data/repositories/auth_repository_impl.dart';

class UpdateUserProfileUseCase {
  final AuthRepository authRepository;

  UpdateUserProfileUseCase(this.authRepository);

  Future<UserInfoData?> execute({
    required String userId,
    String? name,
    String? email,
    String? phone,
    String? avatarUrl,
    String? birthday,
    int? gender,
  }) async {
    final userInfoData =
        await authRepository.updateUserProfile(UpdateUserProfileRequest(
      userId: userId,
      name: name,
      email: email,
      phone: phone,
      avatarUrl: avatarUrl,
      birthday: birthday,
      gender: gender,
    ));
    return userInfoData;
  }
}
