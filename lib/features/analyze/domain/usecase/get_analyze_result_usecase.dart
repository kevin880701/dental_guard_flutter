
import '../../data/models/response/analyze_result/analyze_result_data.dart';
import '../../data/repositories/analyze_repository.dart';

class GetAnalyzeResultUseCase {
  final AnalyzeRepository repository;

  GetAnalyzeResultUseCase(this.repository);

  Future<AnalyzeResultData> call(String id) {
    return repository.getAnalyzeResultById(id);
  }
}
