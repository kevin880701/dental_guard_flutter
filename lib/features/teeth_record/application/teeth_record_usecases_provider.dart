import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/network_interface.dart';
import '../data/datasources/teeth_record_remote_datasource.dart';
import '../data/models/response/group_brushing_stats/group_brushing_stats_data.dart';
import '../data/repositories/teeth_record_repository_impl.dart';
import '../domain/entity/chart_time_status.dart';
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

// Provider
// final groupBrushingStatsProvider = FutureProvider.autoDispose.family<
//     ({List<GroupBrushingStatsData> data, List<GroupBrushingStatsData> baseLineData}),
//     ({DateTime time, ChartTimeStatus status})
// >((ref, param) async {
//   // TODO: 你自己的 API 呼叫
//   // final data = await getGroupBrushingStats(param.time, param.status);
//   // final baseLineData = await getGroupBrushingBaselineStats(param.time, param.status);
//   return (data: data, baseLineData: baseLineData);
// });

final groupBrushingStatsProvider = FutureProvider.autoDispose.family<
    List<GroupBrushingStatsData>,
    ({DateTime time, ChartTimeStatus status})
>((ref, param) async {
  final now = param.time;
  final status = param.status;

  final random = Random();

  List<GroupBrushingStatsData> genFakeStats({
    required int count,
    required DateTime Function(int idx) timeGenerator,
    required double avgBase,
    required double baseAvgBase,
    required double range,
    required double baseRange,
  }) {
    return List.generate(count, (idx) {
      final value = (avgBase + random.nextDouble() * range * (random.nextBool() ? 1 : -1)).clamp(0.0, 100.0);
      final baseValue = (baseAvgBase + random.nextDouble() * baseRange * (random.nextBool() ? 1 : -1)).clamp(0.0, 100.0);
      return GroupBrushingStatsData(
        timeGroup: timeGenerator(idx),
        value: double.parse(value.toStringAsFixed(2)),
        baseValue: double.parse(baseValue.toStringAsFixed(2)),
        count: random.nextInt(20) + 10,
        baseCount: random.nextInt(15) + 8,
      );
    });
  }

  late List<GroupBrushingStatsData> data;

  switch (status) {
    case ChartTimeStatus.day:
    // 24小時
      data = genFakeStats(
        count: 24,
        timeGenerator: (i) => DateTime(now.year, now.month, now.day, i),
        avgBase: 70,
        baseAvgBase: 65,
        range: 20,
        baseRange: 10,
      );
      break;
    case ChartTimeStatus.month:
    // 當月天數
      final days = DateTime(now.year, now.month + 1, 0).day;
      data = genFakeStats(
        count: days,
        timeGenerator: (i) => DateTime(now.year, now.month, i + 1),
        avgBase: 75,
        baseAvgBase: 70,
        range: 10,
        baseRange: 8,
      );
      break;
    case ChartTimeStatus.year:
    // 12個月
      data = genFakeStats(
        count: 12,
        timeGenerator: (i) => DateTime(now.year, i + 1, 1),
        avgBase: 80,
        baseAvgBase: 75,
        range: 6,
        baseRange: 5,
      );
      break;
    case ChartTimeStatus.hour:
    // 60分鐘
      data = genFakeStats(
        count: 60,
        timeGenerator: (i) => DateTime(now.year, now.month, now.day, now.hour, i),
        avgBase: 68,
        baseAvgBase: 66,
        range: 14,
        baseRange: 7,
      );
      break;
  }

  await Future.delayed(const Duration(milliseconds: 400)); // 假裝網路延遲
  return data;
});