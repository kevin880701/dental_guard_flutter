

import 'package:dental_guard_flutter/features/system/data/models/response/app_info_data/app_info_data.dart';

import '../datasources/system_remote_datasource.dart';
import '../models/request/get_app_info/get_app_info_request.dart';
import '../models/request/get_system_maintenance/get_system_maintenance_request.dart';
import '../models/request/upload_app_version/upload_app_version_request.dart';
import '../models/request/upload_system_maintenance/upload_system_maintenance_request.dart';
import '../models/response/system_app_version/system_app_version.dart';
import '../models/response/system_maintenance/system_maintenance.dart';

abstract class SystemRepository {

  /// 取得 APP 版本與維護資訊
  Future<AppInfoData?> getAppInfo(GetAppInfoRequest request);

  /// 上傳 APP 版本
  Future<SystemAppVersion?> uploadAppVersion(UploadAppVersionRequest request);

  /// 取得維護資訊
  Future<SystemMaintenance?> getSystemMaintenance(GetSystemMaintenanceRequest request);

  /// 上傳維護資訊
  Future<SystemMaintenance?> uploadSystemMaintenance(UploadSystemMaintenanceRequest request);
}

class SystemRepositoryImpl implements SystemRepository {
  final SystemRemoteDataSource remoteDataSource;

  SystemRepositoryImpl(this.remoteDataSource);


  @override
  Future<AppInfoData?> getAppInfo(GetAppInfoRequest request) async {
    return await remoteDataSource.getAppInfo(request);
  }

  @override
  Future<SystemAppVersion?> uploadAppVersion(UploadAppVersionRequest request) async {
    return await remoteDataSource.uploadAppVersion(request);
  }

  @override
  Future<SystemMaintenance?> getSystemMaintenance(GetSystemMaintenanceRequest request) async {
    return await remoteDataSource.getSystemMaintenance(request);
  }

  @override
  Future<SystemMaintenance?> uploadSystemMaintenance(UploadSystemMaintenanceRequest request) async {
    return await remoteDataSource.uploadSystemMaintenance(request);
  }
}
