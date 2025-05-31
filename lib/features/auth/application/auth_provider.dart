import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/network_interface.dart';
import '../data/datasources/auth_remote_datasource.dart';
import '../data/repositories/auth_repository_impl.dart';
import '../domain/usecases/get_user_info_usecase.dart';
import '../domain/usecases/login_use_case.dart';
import '../domain/usecases/sign_in_with_google_usecase.dart';
import '../domain/usecases/update_user_profile_usecase.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    AuthRemoteDataSource(NetworkInterface.getInstance()),
  );
});

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  final repo = ref.read(authRepositoryProvider);
  return LoginUseCase(repo);
});

final signInWithGoogleUseCaseProvider = Provider<SignInWithGoogleUseCase>((ref) {
  final repo = ref.read(authRepositoryProvider);
  return SignInWithGoogleUseCase(repo);
});

final getUserInfoUseCaseProvider = Provider<GetUserInfoUseCase>((ref) {
  final repo = ref.read(authRepositoryProvider);
  return GetUserInfoUseCase(repo);
});

final updateUserProfileUseCaseProvider = Provider<UpdateUserProfileUseCase>((ref) {
  final repo = ref.read(authRepositoryProvider);
  return UpdateUserProfileUseCase(repo);
});
