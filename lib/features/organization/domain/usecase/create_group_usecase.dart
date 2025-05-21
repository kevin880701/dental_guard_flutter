import '../../data/models/request/create_group/create_group_request.dart';
import '../../data/repositories/organization_repository_impl.dart';

class CreateGroupUseCase {
  final OrganizationRepository repository;

  CreateGroupUseCase(this.repository);

  Future<bool> call(CreateGroupRequest request) {
    return repository.createGroup(request);
  }
}
