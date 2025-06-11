
import '../../data/models/request/upload_app_version/upload_app_version_request.dart';
import '../../data/models/response/system_app_version/system_app_version.dart';
import '../../data/repositories/system_repository_impl.dart';

class UploadAppVersionUseCase {
  final SystemRepository repository;

  UploadAppVersionUseCase(this.repository);

  Future<SystemAppVersion?> call(UploadAppVersionRequest request) {
    return repository.uploadAppVersion(request);
  }
}
