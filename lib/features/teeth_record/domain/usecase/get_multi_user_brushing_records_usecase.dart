import '../../data/models/request/get_multi_user_brushing_records/get_multi_user_brushing_records_request.dart';
import '../../data/models/response/multi_user_brushing_records/multi_user_brushing_records_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class GetMultiUserBrushingRecordsUseCase {
  final TeethRecordRepository repository;

  GetMultiUserBrushingRecordsUseCase(this.repository);

  Future<List<MultiUserBrushingRecordsData>> call(GetMultiUserBrushingRecordsRequest request) {
    return repository.getMultiUserBrushingRecords(request);
  }
}
