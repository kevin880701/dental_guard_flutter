
import '../datasources/teeth_record_remote_datasource.dart';
import '../models/request/create_brushing_record/create_brushing_record_request.dart';
import '../models/request/get_group_brushing_stats/get_group_brushing_stats_request.dart';
import '../models/request/get_groups_brushing_records/get_groups_brushing_records_request.dart';
import '../models/request/get_multi_user_brushing_records/get_multi_user_brushing_records_request.dart';
import '../models/request/get_user_brushing_stats/get_user_brushing_stats_request.dart';
import '../models/response/brushing_record/brushing_record_data.dart';
import '../models/response/brushing_stats/brushing_stats_data.dart';
import '../models/response/groups_brushing_records/group_brushing_records_data.dart';
import '../models/response/multi_user_brushing_records/multi_user_brushing_records_data.dart';

abstract class TeethRecordRepository {
  Future<BrushingRecordData?> createBrushingRecord(CreateBrushingRecordRequest request);
  Future<bool> deleteBrushingRecord(String recordId);

  /// 取得指定潔牙紀錄
  Future<BrushingRecordData?> getBrushingRecordById(String recordId);

  /// 查詢單一群組潔牙平均統計
  Future<List<BrushingStatsData>> getGroupBrushingStats(GetGroupBrushingStatsRequest request);

  /// 查詢群組刷牙紀錄(含群組、user資訊)
  Future<List<GroupBrushingRecordsData>> getGroupsBrushingRecords(GetGroupsBrushingRecordsRequest request);

  /// 查詢使用者潔牙紀錄統計
  Future<List<BrushingStatsData>> getUserBrushingStats(GetUserBrushingStatsRequest request);

  /// 查詢多使用者潔牙紀錄
  Future<List<MultiUserBrushingRecordsData>> getMultiUserBrushingRecords(GetMultiUserBrushingRecordsRequest request);
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
  Future<BrushingRecordData?> getBrushingRecordById(String recordId) async {
    return await remoteDataSource.getBrushingRecordById(recordId);
  }

  @override
  Future<List<BrushingStatsData>> getGroupBrushingStats(GetGroupBrushingStatsRequest request) async {
    return await remoteDataSource.getGroupBrushingStats(request);
  }

  @override
  Future<List<GroupBrushingRecordsData>> getGroupsBrushingRecords(GetGroupsBrushingRecordsRequest request) async {
    return await remoteDataSource.getGroupsBrushingRecords(request);
  }

  @override
  Future<List<BrushingStatsData>> getUserBrushingStats(GetUserBrushingStatsRequest request) async {
    return await remoteDataSource.getUserBrushingStats(request);
  }

  @override
  Future<List<MultiUserBrushingRecordsData>> getMultiUserBrushingRecords(GetMultiUserBrushingRecordsRequest request) async {
    return await remoteDataSource.getMultiUserBrushingRecords(request);
  }
}
