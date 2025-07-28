import '../../data/models/request/get_user_brushing_stats/get_user_brushing_stats_request.dart';
import '../../data/models/response/brushing_stats/brushing_stats_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class GetUserBrushingStatsUseCase {
  final TeethRecordRepository repository;

  GetUserBrushingStatsUseCase(this.repository);

  Future<List<BrushingStatsData>> call({
    required String userId,
    required String startDate,
    required String endDate,
    required String timeSpace,
    required String timeZone
  }) {
    return repository.getUserBrushingStats(GetUserBrushingStatsRequest(userId: userId, startDate: startDate, endDate: endDate, timeSpace: timeSpace, timeZone: timeZone));
  }
}
