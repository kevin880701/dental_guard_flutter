import '../../data/models/request/create_group/create_group_request.dart';
import '../../data/models/response/group/group_data.dart';
import '../../data/repositories/organization_repository_impl.dart';

class CreateGroupUseCase {
  final OrganizationRepository repository;

  CreateGroupUseCase(this.repository);

  Future<GroupData?> call({
    required String organizationId,
    required String groupName,
    required String userId,
  }) {
    return repository.createGroup(CreateGroupRequest(
        organizationId: organizationId, groupName: groupName, userId: userId));
  }
}
