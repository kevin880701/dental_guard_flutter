import '../../data/models/request/group_member/group_member_request.dart';
import '../../data/repositories/organization_repository_impl.dart';

class AddGroupMemberUseCase {
  final OrganizationRepository repository;

  AddGroupMemberUseCase(this.repository);

  Future<bool> call(GroupMemberRequest request) {
    return repository.addGroupMember(request);
  }
}
