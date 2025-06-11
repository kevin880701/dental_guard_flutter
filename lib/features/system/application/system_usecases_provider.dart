
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/network_interface.dart';
import '../data/datasources/system_remote_datasource.dart';
import '../data/repositories/system_repository_impl.dart';
import '../domain/usecase/get_app_info_usecase.dart';
import '../domain/usecase/upload_app_version_usecase.dart';
import '../domain/usecase/get_system_maintenance_usecase.dart';
import '../domain/usecase/upload_system_maintenance_usecase.dart';

// Repository
final systemRepositoryProvider = Provider<SystemRepository>((ref) {
  return SystemRepositoryImpl(
    SystemRemoteDataSource(NetworkInterface.getInstance()),
  );
});

// UseCases
final getAppInfoUseCaseProvider = Provider<GetAppInfoUseCase>((ref) {
  final repo = ref.read(systemRepositoryProvider);
  return GetAppInfoUseCase(repo);
});

final uploadAppVersionUseCaseProvider = Provider<UploadAppVersionUseCase>((ref) {
  final repo = ref.read(systemRepositoryProvider);
  return UploadAppVersionUseCase(repo);
});

final getSystemMaintenanceUseCaseProvider = Provider<GetSystemMaintenanceUseCase>((ref) {
  final repo = ref.read(systemRepositoryProvider);
  return GetSystemMaintenanceUseCase(repo);
});

final uploadSystemMaintenanceUseCaseProvider = Provider<UploadSystemMaintenanceUseCase>((ref) {
  final repo = ref.read(systemRepositoryProvider);
  return UploadSystemMaintenanceUseCase(repo);
});
