
import '../../data/models/request/upload_system_maintenance/upload_system_maintenance_request.dart';
import '../../data/models/response/system_maintenance/system_maintenance.dart';
import '../../data/repositories/system_repository_impl.dart';

class UploadSystemMaintenanceUseCase {
  final SystemRepository repository;

  UploadSystemMaintenanceUseCase(this.repository);

  Future<SystemMaintenance?> call(UploadSystemMaintenanceRequest request) {
    return repository.uploadSystemMaintenance(request);
  }
}
