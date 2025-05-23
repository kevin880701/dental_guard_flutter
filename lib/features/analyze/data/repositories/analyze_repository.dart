import 'dart:io';
import '../../data/datasources/analyze_remote_datasource.dart';
import '../models/response/analyze_result/analyze_result_data.dart';

abstract class AnalyzeRepository {
  Future<AnalyzeResultData?> analyzeTeethImage(File imageFile);
  Future<AnalyzeResultData?> getAnalyzeResultById(String id);
  String getAnalyzeImageUrl(String relativePath);
}

class AnalyzeRepositoryImpl implements AnalyzeRepository {
  final AnalyzeRemoteDataSource remoteDataSource;

  AnalyzeRepositoryImpl(this.remoteDataSource);

  @override
  Future<AnalyzeResultData?> analyzeTeethImage(File imageFile) {
    return remoteDataSource.analyzeTeethImage(imageFile);
  }

  @override
  Future<AnalyzeResultData?> getAnalyzeResultById(String id) {
    return remoteDataSource.getAnalyzeResultById(id);
  }

  @override
  String getAnalyzeImageUrl(String relativePath) {
    return remoteDataSource.getAnalyzeImageUrl(relativePath);
  }
}
