import '../../data/models/request/get_group_brushing_stats/get_group_brushing_stats_request.dart';
import '../../data/models/response/group_brushing_stats/group_brushing_stats_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class GetGroupBrushingStatsUseCase {
  final TeethRecordRepository repository;

  GetGroupBrushingStatsUseCase(this.repository);

  Future<List<GroupBrushingStatsData>> call(GetGroupBrushingStatsRequest request) {
    return repository.getGroupBrushingStats(request);
  }
}
