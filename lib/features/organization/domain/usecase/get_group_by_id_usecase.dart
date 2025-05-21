import '../../data/repositories/organization_repository_impl.dart';
import '../../data/models/response/group/group_data.dart';

class GetGroupByIdUseCase {
  final OrganizationRepository repository;

  GetGroupByIdUseCase(this.repository);

  Future<GroupData> call(String groupId) {
    return repository.getGroupById(groupId);
  }
}
