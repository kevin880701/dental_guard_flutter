import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/network_interface.dart';
import '../data/datasources/analyze_remote_datasource.dart';
import '../data/repositories/analyze_repository.dart';
import '../domain/usecase/get_analyze_image_url_usecase.dart';
import '../domain/usecase/get_analyze_result_usecase.dart';
import '../domain/usecase/analyze_teeth_image_usecase.dart';

/// Repository Provider
final analyzeRepositoryProvider = Provider<AnalyzeRepository>((ref) {
  return AnalyzeRepositoryImpl(
    AnalyzeRemoteDataSource(NetworkInterface.getInstance()),
  );
});

/// UseCase Providers

final analyzeTeethImageUseCaseUseCaseProvider = Provider<AnalyzeTeethImageUseCase>((ref) {
  final repo = ref.read(analyzeRepositoryProvider);
  return AnalyzeTeethImageUseCase(repo);
});

final getAnalyzeResultUseCaseProvider = Provider<GetAnalyzeResultUseCase>((ref) {
  final repo = ref.read(analyzeRepositoryProvider);
  return GetAnalyzeResultUseCase(repo);
});

final getAnalyzeImageUrlUseCaseProvider = Provider<GetAnalyzeImageUrlUseCase>((ref) {
  final repo = ref.read(analyzeRepositoryProvider);
  return GetAnalyzeImageUrlUseCase(repo);
});
