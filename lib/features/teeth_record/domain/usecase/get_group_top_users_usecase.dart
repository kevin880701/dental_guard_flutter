import '../../data/models/request/get_group_top_users/get_group_top_users.dart';
import '../../data/models/response/group_top_user/group_top_user.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';
import '../entity/rank_sort_criteria.dart';

class GetGroupsTopUsersUseCase {
  final TeethRecordRepository repository;

  GetGroupsTopUsersUseCase(this.repository);

  Future<List<GroupTopUser>> call({
    required String groupId,
    required RankSortCriteria sortCriteria,
    int limit = 5,
    required String startDate,
    required String endDate,
    required String timeZone,
  }) {
    return repository.getGroupTopUsers(GroupTopUsersRequest(
        groupId: groupId, sortCriteria: sortCriteria, limit: limit, startDate: startDate, endDate: endDate, timeZone: timeZone));
  }
}
