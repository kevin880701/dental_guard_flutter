
import '../datasources/teeth_record_remote_datasource.dart';
import '../models/request/create_brushing_record/create_brushing_record_request.dart';
import '../models/request/get_group_brushing_stats/get_group_brushing_stats_request.dart';
import '../models/request/get_groups_brushing_records/get_groups_brushing_records_request.dart';
import '../models/response/brushing_record/brushing_record_data.dart';
import '../models/response/group_brushing_stats/group_brushing_stats_data.dart';
import '../models/response/groups_brushing_records/group_brushing_records_data.dart';

abstract class TeethRecordRepository {
  Future<BrushingRecordData?> createBrushingRecord(CreateBrushingRecordRequest request);
  Future<bool> deleteBrushingRecord(String recordId);

  /// 取得指定使用者的潔牙紀錄列表
  Future<List<BrushingRecordData>> getUserBrushingRecords(String userId);

  /// 取得指定潔牙紀錄
  Future<BrushingRecordData?> getBrushingRecordById(String recordId);

  /// 查詢單一群組潔牙平均統計
  Future<List<GroupBrushingStatsData>> getGroupBrushingStats(GetGroupBrushingStatsRequest request);

  /// 查詢群組刷牙紀錄(含群組、user資訊)
  Future<List<GroupBrushingRecordsData>> getGroupsBrushingRecords(GetGroupsBrushingRecordsRequest request);
}

class TeethRecordRepositoryImpl implements TeethRecordRepository {
  final TeethRecordRemoteDataSource remoteDataSource;

  TeethRecordRepositoryImpl(this.remoteDataSource);

  @override
  Future<BrushingRecordData?> createBrushingRecord(CreateBrushingRecordRequest request) async {
    return await remoteDataSource.createBrushingRecord(request);
  }

  @override
  Future<bool> deleteBrushingRecord(String recordId) async {
    return await remoteDataSource.deleteBrushingRecord(recordId);
  }

  @override
  Future<List<BrushingRecordData>> getUserBrushingRecords(String userId) async {
    return await remoteDataSource.getUserBrushingRecords(userId);
  }

  @override
  Future<BrushingRecordData?> getBrushingRecordById(String recordId) async {
    return await remoteDataSource.getBrushingRecordById(recordId);
  }

  @override
  Future<List<GroupBrushingStatsData>> getGroupBrushingStats(GetGroupBrushingStatsRequest request) async {
    return await remoteDataSource.getGroupBrushingStats(request);
  }

  @override
  Future<List<GroupBrushingRecordsData>> getGroupsBrushingRecords(GetGroupsBrushingRecordsRequest request) async {
    return await remoteDataSource.getGroupsBrushingRecords(request);
  }
}
