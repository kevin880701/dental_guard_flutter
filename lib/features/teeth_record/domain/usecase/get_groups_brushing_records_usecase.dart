import '../../data/models/request/get_groups_brushing_records/get_groups_brushing_records_request.dart';
import '../../data/models/response/groups_brushing_records/group_brushing_records_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class GetGroupsBrushingRecordsUseCase {
  final TeethRecordRepository repository;

  GetGroupsBrushingRecordsUseCase(this.repository);

  Future<List<GroupBrushingRecordsData>> call({
    required List<String> groupIds,
    required String startDate,
    required String endDate,
  }) {
    return repository.getGroupsBrushingRecords(GetGroupsBrushingRecordsRequest(
        groupIds: groupIds, startDate: startDate, endDate: endDate));
  }
}
