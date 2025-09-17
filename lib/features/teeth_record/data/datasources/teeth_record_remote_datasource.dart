import 'package:dental_guard_flutter/core/constants/api_endpoints.dart';
import 'package:dental_guard_flutter/core/models/api_response.dart';
import 'package:dental_guard_flutter/core/network/network_interface.dart';

import '../models/request/create_brushing_record/create_brushing_record_request.dart';
import '../models/request/get_group_brushing_stats/get_group_brushing_stats_request.dart';
import '../models/request/get_group_top_users/get_group_top_users.dart';
import '../models/request/get_groups_brushing_records/get_groups_brushing_records_request.dart';
import '../models/request/get_user_brushing_stats/get_user_brushing_stats_request.dart';
import '../models/request/users_records_search/users_records_search_request.dart';
import '../models/response/brushing_record/brushing_record_data.dart';
import '../models/response/brushing_stats/brushing_stats_data.dart';
import '../models/response/group_top_user/group_top_user.dart';
import '../models/response/groups_brushing_records/group_brushing_records_data.dart';
import '../models/response/users_records_pagination/users_records_pagination.dart';


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

    return apiResponse.data == true;
  }

  /// 取得指定潔牙紀錄
  Future<BrushingRecordData?> getBrushingRecordById(String recordId) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getBrushingRecordById(recordId),
    );

    final apiResponse = ApiResponse<BrushingRecordData>.fromJson(
      response.data,
          (json) => BrushingRecordData.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }

  /// 查詢單一群組潔牙平均統計
  Future<List<BrushingStatsData>> getGroupBrushingStats(GetGroupBrushingStatsRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.groupBrushingStats, // 這要在 ApiEndPoint 新增
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<List<BrushingStatsData>>.fromJson(
      response.data,
          (json) => (json as List)
          .map((item) => BrushingStatsData.fromJson(item as Map<String, dynamic>))
          .toList(),
    );

    return apiResponse.data ?? [];
  }

  /// 查詢多群組使用者潔牙紀錄（含群組/使用者/分析結果）
  Future<GroupsBrushingRecordsResponse?> getGroupsBrushingRecords(GetGroupsBrushingRecordsRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.groupsBrushingRecords,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<GroupsBrushingRecordsResponse>.fromJson(
      response.data,
          (json) => GroupsBrushingRecordsResponse.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }

  /// 取得使用者刷牙統計資料（可包含 baseline）
  Future<List<BrushingStatsData>> getUserBrushingStats(GetUserBrushingStatsRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.userBrushingStats,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<List<BrushingStatsData>>.fromJson(
      response.data,
          (json) => (json as List)
          .map((item) => BrushingStatsData.fromJson(item as Map<String, dynamic>))
          .toList(),
    );

    return apiResponse.data ?? [];
  }

  /// 查詢多使用者潔牙紀錄（含分析結果）
  Future<UsersRecordsPagination?> usersRecordsSearch(UsersRecordsSearchRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.usersBrushingRecords,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<UsersRecordsPagination?>.fromJson(
      response.data,
          (json) => nullableFromJson(json, UsersRecordsPagination.fromJson),
    );

    return apiResponse.data;
  }

  /// 查詢群組內使用者排名
  Future<List<GroupTopUser>> getGroupTopUsers(GroupTopUsersRequest request) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.teethRecordGroupTopUsers,
      query: request.toJson(),
    );

    final apiResponse = ApiResponse<List<GroupTopUser>>.fromJson(
      response.data,
          (json) => (json as List)
          .map((item) => GroupTopUser.fromJson(item as Map<String, dynamic>))
          .toList(),
    );

    return apiResponse.data ?? [];
  }
}
