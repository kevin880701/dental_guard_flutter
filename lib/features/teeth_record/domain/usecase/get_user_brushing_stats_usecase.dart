import '../../data/models/request/get_user_brushing_stats/get_user_brushing_stats_request.dart';
import '../../data/models/response/user_brushing_stats/user_brushing_stats_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class GetUserBrushingStatsUseCase {
  final TeethRecordRepository repository;

  GetUserBrushingStatsUseCase(this.repository);

  Future<List<UserBrushingStatsData>> call(GetUserBrushingStatsRequest request) {
    return repository.getUserBrushingStats(request);
  }
}
