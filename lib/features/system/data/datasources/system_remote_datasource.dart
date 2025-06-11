import 'package:dental_guard_flutter/core/constants/api_endpoints.dart';
import 'package:dental_guard_flutter/core/models/api_response.dart';
import 'package:dental_guard_flutter/core/network/network_interface.dart';

import '../models/request/get_app_info/get_app_info_request.dart';
import '../models/request/get_system_maintenance/get_system_maintenance_request.dart';
import '../models/request/upload_app_version/upload_app_version_request.dart';
import '../models/request/upload_system_maintenance/upload_system_maintenance_request.dart';
import '../models/response/app_info_data/app_info_data.dart';
import '../models/response/system_app_version/system_app_version.dart';
import '../models/response/system_maintenance/system_maintenance.dart';

class SystemRemoteDataSource {
  final NetworkInterface networkInterface;

  SystemRemoteDataSource(this.networkInterface);

  /// 取得 APP 版本與維護資訊
  Future<AppInfoData?> getAppInfo(GetAppInfoRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.getAppInfo,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<AppInfoData>.fromJson(
      response.data,
          (json) => AppInfoData.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }

  /// 上傳新的 APP 版本
  Future<SystemAppVersion?> uploadAppVersion(UploadAppVersionRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.uploadAppVersion,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<SystemAppVersion>.fromJson(
      response.data,
          (json) => SystemAppVersion.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }

  /// 取得維護資訊
  Future<SystemMaintenance?> getSystemMaintenance(GetSystemMaintenanceRequest request) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getSystemMaintenance,
      query: request.toJson()
    );

    final apiResponse = ApiResponse<SystemMaintenance>.fromJson(
      response.data,
          (json) => SystemMaintenance.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }

  /// 上傳新的維護資訊
  Future<SystemMaintenance?> uploadSystemMaintenance(UploadSystemMaintenanceRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.uploadSystemMaintenance,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<SystemMaintenance>.fromJson(
      response.data,
          (json) => SystemMaintenance.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }
}
