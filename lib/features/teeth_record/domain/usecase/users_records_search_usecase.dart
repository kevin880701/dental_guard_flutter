import '../../data/models/request/users_records_search/users_records_search_request.dart';
import '../../data/models/response/users_records_pagination/users_records_pagination.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class UsersRecordsSearchUseCase {
  final TeethRecordRepository repository;

  UsersRecordsSearchUseCase(this.repository);

  Future<UsersRecordsPagination?> call(
      {required List<String> userIds,
      required String startDate,
        required String endDate,
        required String timeZone}) {
    return repository.usersRecordsSearch(
        UsersRecordsSearchRequest(
            userIds: userIds, startDate: startDate, endDate: endDate, timeZone: timeZone));
  }
}
