import '../../data/models/response/brushing_record/brushing_record_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class GetUserBrushingRecordsUseCase {
  final TeethRecordRepository repository;

  GetUserBrushingRecordsUseCase(this.repository);

  Future<List<BrushingRecordData>> call(String userId) {
    return repository.getUserBrushingRecords(userId);
  }
}
