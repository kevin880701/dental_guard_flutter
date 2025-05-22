import 'dart:io';

import '../../data/models/response/analyze_result/analyze_result_data.dart';
import '../../data/repositories/analyze_repository.dart';

class AnalyzeTeethImageUseCase {
  final AnalyzeRepository repository;

  AnalyzeTeethImageUseCase(this.repository);

  Future<AnalyzeResultData> call(File imageFile) {
    return repository.analyzeTeethImage(imageFile);
  }
}
