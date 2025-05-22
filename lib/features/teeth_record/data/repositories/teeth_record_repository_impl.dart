
import '../datasources/teeth_record_remote_datasource.dart';
import '../models/request/create_brushing_record/create_brushing_record_request.dart';
import '../models/response/brushing_record/brushing_record_data.dart';

abstract class TeethRecordRepository {
  Future<BrushingRecordData?> createBrushingRecord(CreateBrushingRecordRequest request);
  Future<bool> deleteBrushingRecord(String recordId);

  /// 取得指定使用者的潔牙紀錄列表
  Future<List<BrushingRecordData>> getUserBrushingRecords(String userId);

  /// 取得指定潔牙紀錄
  Future<BrushingRecordData> getBrushingRecordById(String recordId);
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
  Future<BrushingRecordData> getBrushingRecordById(String recordId) async {
    return await remoteDataSource.getBrushingRecordById(recordId);
  }
}
