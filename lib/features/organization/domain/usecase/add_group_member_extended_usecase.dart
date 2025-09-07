import '../../../../core/models/api_response.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../data/models/request/add_group_member_extended/add_group_member_extended_request.dart';
import '../../data/repositories/organization_repository_impl.dart';

class AddGroupMemberExtendedUseCase {
  final OrganizationRepository repository;

  AddGroupMemberExtendedUseCase(this.repository);

  Future<ApiResponse<UserInfoData?>> call({
    required String organizationId,
    required String groupId,
    required String number,
    required String name,
    String? email,
    String? phone,
    String? avatarUrl,
    required String birthday,
    required int gender,
  }) {
    return repository.addGroupMemberExtended(AddGroupMemberExtendedRequest(
      organizationId: organizationId,
      groupId: groupId,
      number: number,
      name: name,
      email: email,
      phone: phone,
      avatarUrl: avatarUrl,
      birthday: birthday,
      gender: gender,
    ));
  }
}
