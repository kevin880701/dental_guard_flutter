// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_system_maintenance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadSystemMaintenanceRequestImpl
    _$$UploadSystemMaintenanceRequestImplFromJson(Map<String, dynamic> json) =>
        _$UploadSystemMaintenanceRequestImpl(
          platform: json['platform'] as String,
          isMaintenance: json['isMaintenance'] as bool,
          maintenanceStart: json['maintenanceStart'] as String,
          maintenanceEnd: json['maintenanceEnd'] as String,
          announcement: json['announcement'] as String?,
        );

Map<String, dynamic> _$$UploadSystemMaintenanceRequestImplToJson(
        _$UploadSystemMaintenanceRequestImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'isMaintenance': instance.isMaintenance,
      'maintenanceStart': instance.maintenanceStart,
      'maintenanceEnd': instance.maintenanceEnd,
      'announcement': instance.announcement,
    };
