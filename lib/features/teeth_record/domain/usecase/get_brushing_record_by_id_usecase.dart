import '../../data/models/response/brushing_record/brushing_record_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class GetBrushingRecordByIdUseCase {
  final TeethRecordRepository repository;

  GetBrushingRecordByIdUseCase(this.repository);

  Future<BrushingRecordData> call(String recordId) {
    return repository.getBrushingRecordById(recordId);
  }
}
