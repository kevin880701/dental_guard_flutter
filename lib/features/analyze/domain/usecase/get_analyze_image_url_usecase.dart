
import '../../data/repositories/analyze_repository.dart';

class GetAnalyzeImageUrlUseCase {
  final AnalyzeRepository repository;

  GetAnalyzeImageUrlUseCase(this.repository);

  String call(String relativePath) {
    return repository.getAnalyzeImageUrl(relativePath);
  }
}
