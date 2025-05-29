import '../../../../core/models/api_response.dart';
import '../../data/models/request/update_group_name/update_group_name_request.dart';
import '../../data/models/response/group/group_data.dart';
import '../../data/repositories/organization_repository_impl.dart';

class UpdateGroupNameUseCase {
  final OrganizationRepository repository;

  UpdateGroupNameUseCase(this.repository);

  Future<ApiResponse<GroupData?>> call({
    required String groupId,
    required String newName,
  }) {
    return repository.updateGroupName(UpdateGroupNameRequest(
      groupId: groupId,
      newName: newName,
    ));
  }
}
