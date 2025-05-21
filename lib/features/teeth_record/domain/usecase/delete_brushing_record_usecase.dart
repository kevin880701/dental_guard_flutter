
import '../../data/repositories/teeth_record_repository_impl.dart';

class DeleteBrushingRecordUseCase {
  final TeethRecordRepository repository;

  DeleteBrushingRecordUseCase(this.repository);

  Future<bool> call(String recordId) {
    return repository.deleteBrushingRecord(recordId);
  }
}
