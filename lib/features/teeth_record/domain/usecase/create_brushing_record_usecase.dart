import '../../data/models/request/create_brushing_record/create_brushing_record_request.dart';
import '../../data/models/response/brushing_record/brushing_record_data.dart';
import '../../data/repositories/teeth_record_repository_impl.dart';

class CreateBrushingRecordUseCase {
  final TeethRecordRepository repository;

  CreateBrushingRecordUseCase(this.repository);

  Future<BrushingRecordData?> call(
      {required String userId,
      String? name,
      String? remarks,
      String? analyzeResultId}) {
    return repository.createBrushingRecord(CreateBrushingRecordRequest(
        userId: userId,
        name: name,
        remarks: remarks,
        analyzeResultId: analyzeResultId));
  }
}
