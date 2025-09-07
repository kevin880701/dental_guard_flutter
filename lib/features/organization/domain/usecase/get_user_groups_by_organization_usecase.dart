
import '../../data/models/response/group_with_user_type/group_with_user_type_data.dart';
import '../../data/repositories/organization_repository_impl.dart';

class GetUserGroupsByOrganizationUseCase {
  final OrganizationRepository repository;

  GetUserGroupsByOrganizationUseCase(this.repository);

  Future<List<GroupWithUserTypeData>> call(String organizationId) {
    return repository.getUserGroupsByOrganizationId(organizationId);
  }
}