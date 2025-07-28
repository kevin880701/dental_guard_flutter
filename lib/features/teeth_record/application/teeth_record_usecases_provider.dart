
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/network_interface.dart';
import '../data/datasources/teeth_record_remote_datasource.dart';
import '../data/models/request/get_group_brushing_stats/get_group_brushing_stats_request.dart';
import '../data/models/response/brushing_stats/brushing_stats_data.dart';
import '../data/repositories/teeth_record_repository_impl.dart';
import '../domain/entity/chart_time_status.dart';
import '../domain/usecase/create_brushing_record_usecase.dart';
import '../domain/usecase/delete_brushing_record_usecase.dart';
import '../domain/usecase/get_brushing_record_by_id_usecase.dart';
import '../domain/usecase/get_group_brushing_stats_usecase.dart';
import '../domain/usecase/get_groups_brushing_records_usecase.dart';
import '../domain/usecase/get_multi_user_brushing_records_usecase.dart';
import '../domain/usecase/get_user_brushing_stats_usecase.dart';

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

final getBrushingRecordByIdUseCaseProvider = Provider<GetBrushingRecordByIdUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return GetBrushingRecordByIdUseCase(repo);
});

final getGroupsBrushingRecordsUseCaseProvider = Provider<GetGroupsBrushingRecordsUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return GetGroupsBrushingRecordsUseCase(repo);
});

final getGroupBrushingStatsUseCaseProvider = Provider<GetGroupBrushingStatsUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return GetGroupBrushingStatsUseCase(repo);
});

final getUserBrushingStatsUseCaseProvider = Provider<GetUserBrushingStatsUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return GetUserBrushingStatsUseCase(repo);
});

final getMultiUserBrushingRecordsUseCaseProvider = Provider<GetMultiUserBrushingRecordsUseCase>((ref) {
  final repo = ref.read(teethRecordRepositoryProvider);
  return GetMultiUserBrushingRecordsUseCase(repo);
});

final groupBrushingStatsProvider = FutureProvider.autoDispose.family<
    List<BrushingStatsData>,
    ({String groupId, DateTime selectTime, ChartTimeStatus status,
    int refreshKey,
    })
>((ref, param) async {
  final useCase = ref.read(getGroupBrushingStatsUseCaseProvider);

  final dateRange = getChartDateRange(param.selectTime, param.status);
  final String timeZone = await FlutterTimezone.getLocalTimezone();

  final result = await useCase(
    GetGroupBrushingStatsRequest(
      groupId: param.groupId,
      startDate: dateRange.start,
      endDate: dateRange.end,
      timeSpace: param.status.name,
      timeZone: timeZone,
    ),
  );

  // 將 timeGroup 轉換時區
  final convertedResult = result
      .map((item) => item.copyWith(
    time: item.time.convertToTimeZone(),
  ))
      .toList();

  return convertedResult;
});

final memberBrushingStatsProvider = FutureProvider.autoDispose.family<
    List<BrushingStatsData>,
    ({
    String userId,
    DateTime selectTime,
    ChartTimeStatus status,
    int refreshKey,
    })
>((ref, param) async {
  final useCase = ref.read(getUserBrushingStatsUseCaseProvider);

  final dateRange = getChartDateRange(param.selectTime, param.status);
  final String timeZone = await FlutterTimezone.getLocalTimezone();

  final result = await useCase(
    userId: param.userId,
    startDate: dateRange.start,
    endDate: dateRange.end,
    timeSpace: param.status.name,
      timeZone: timeZone,
  );

  // 轉換時區
  return result
      .map((item) => item.copyWith(
    time: item.time.convertToTimeZone(),
  ))
      .toList();
});
