
import '../../data/models/response/group_with_member_count/group_with_member_count_data.dart';
import '../../data/repositories/organization_repository_impl.dart';

class GetGroupsByOrganizationUseCase {
  final OrganizationRepository repository;

  GetGroupsByOrganizationUseCase(this.repository);

  Future<List<GroupWithMemberCountData>> call(String organizationId) {
    return repository.getGroupsByOrganizationId(organizationId);
  }
}