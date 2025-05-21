import '../../data/models/request/create_brushing_record/create_brushing_record_request.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class CreateBrushingRecordUseCase {
  final TeethRecordRepository repository;

  CreateBrushingRecordUseCase(this.repository);

  Future<bool> call(CreateBrushingRecordRequest request) {
    return repository.createBrushingRecord(request);
  }
}
