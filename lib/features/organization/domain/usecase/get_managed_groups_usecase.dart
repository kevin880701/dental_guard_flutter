import '../../data/models/response/groups_manage/groups_manage_data.dart';
import '../../data/repositories/organization_repository_impl.dart';

class GetManagedGroupsUseCase {
  final OrganizationRepository repository;

  GetManagedGroupsUseCase(this.repository);

  Future<GroupsManageData> call() {
    return repository.getManagedGroups();
  }
}
