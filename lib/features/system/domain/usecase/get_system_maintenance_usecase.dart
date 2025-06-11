
import '../../data/models/request/get_system_maintenance/get_system_maintenance_request.dart';
import '../../data/models/response/system_maintenance/system_maintenance.dart';
import '../../data/repositories/system_repository_impl.dart';

class GetSystemMaintenanceUseCase {
  final SystemRepository repository;

  GetSystemMaintenanceUseCase(this.repository);

  Future<SystemMaintenance?> call({required String platform}) {
    return repository.getSystemMaintenance(
      GetSystemMaintenanceRequest(platform: platform),
    );
  }
}