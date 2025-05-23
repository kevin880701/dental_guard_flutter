import 'package:dental_guard_flutter/core/constants/api_endpoints.dart';
import 'package:dental_guard_flutter/core/models/api_response.dart';
import 'package:dental_guard_flutter/core/network/network_interface.dart';

import '../models/request/create_brushing_record/create_brushing_record_request.dart';
import '../models/response/brushing_record/brushing_record_data.dart';


class TeethRecordRemoteDataSource {
  final NetworkInterface networkInterface;

  TeethRecordRemoteDataSource(this.networkInterface);

  /// 建立潔牙紀錄
  Future<BrushingRecordData?> createBrushingRecord(CreateBrushingRecordRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.createBrushingRecord,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<BrushingRecordData?>.fromJson(
      response.data,
          (json) => nullableFromJson(json, BrushingRecordData.fromJson),
    );

    return apiResponse.data;
  }

  /// 刪除潔牙紀錄
  Future<bool> deleteBrushingRecord(String recordId) async {
    final response = await networkInterface.delete(
      url: ApiEndPoint.deleteBrushingRecord(recordId),
    );

    final apiResponse = ApiResponse<bool>.fromJson(
      response.data,
          (json) => json as bool,
    );

    return apiResponse.data;
  }

  /// 取得指定使用者的潔牙紀錄
  Future<List<BrushingRecordData>> getUserBrushingRecords(String userId) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getUserBrushingRecords(userId),
    );

    final apiResponse = ApiResponse<List<BrushingRecordData>>.fromJson(
      response.data,
          (json) => (json as List)
          .map((item) => BrushingRecordData.fromJson(item as Map<String, dynamic>))
          .toList(),
    );

    return apiResponse.data;
  }


  /// 取得指定潔牙紀錄
  Future<BrushingRecordData> getBrushingRecordById(String recordId) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getBrushingRecordById(recordId),
    );

    final apiResponse = ApiResponse<BrushingRecordData>.fromJson(
      response.data,
          (json) => BrushingRecordData.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }
}
