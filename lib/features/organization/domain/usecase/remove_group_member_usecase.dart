import '../../data/models/request/group_member/group_member_request.dart';
import '../../data/repositories/organization_repository_impl.dart';

class RemoveGroupMemberUseCase {
  final OrganizationRepository repository;

  RemoveGroupMemberUseCase(this.repository);

  Future<bool> call(GroupMemberRequest request) {
    return repository.removeGroupMember(request);
  }
}
