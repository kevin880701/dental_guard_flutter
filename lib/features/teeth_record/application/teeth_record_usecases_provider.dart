import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/network_interface.dart';
import '../data/datasources/teeth_record_remote_datasource.dart';
import '../data/repositories/teeth_record_repository_impl.dart';
import '../domain/usecase/create_brushing_record_usecase.dart';
import '../domain/usecase/delete_brushing_record_usecase.dart';
import '../domain/usecase/get_brushing_record_by_id_usecase.dart';
import '../domain/usecase/get_user_brushing_records_usecase.dart';

/// Repository Provider
final teethRecordRepositoryProvider = Provider<TeethRecordRepository>((ref) {
  return TeethRecordRepositoryImpl(
    TeethRecordRemoteDataSource(NetworkInterface.getInstance()),
  );
});

/// UseCase Providers

final createBrushingRecordUseCaseProvider = Provider<CreateBrushingRecordUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return CreateBrushingRecordUseCase(repo);
});

final deleteBrushingRecordUseCaseProvider = Provider<DeleteBrushingRecordUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return DeleteBrushingRecordUseCase(repo);
});

final getUserBrushingRecordsUseCaseProvider = Provider<GetUserBrushingRecordsUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return GetUserBrushingRecordsUseCase(repo);
});

final getBrushingRecordByIdUseCaseProvider = Provider<GetBrushingRecordByIdUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return GetBrushingRecordByIdUseCase(repo);
});
