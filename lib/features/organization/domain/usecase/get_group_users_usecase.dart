import 'package:dental_guard_flutter/features/auth/data/models/response/user_info/user_info_data.dart';

import '../../data/repositories/organization_repository_impl.dart';

class GetGroupUsersUseCase {
  final OrganizationRepository repository;

  GetGroupUsersUseCase(this.repository);

  Future<List<UserInfoData>> call(String groupId) {
    return repository.getGroupUsers(groupId);
  }
}
