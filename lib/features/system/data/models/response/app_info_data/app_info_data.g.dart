// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppInfoDataImpl _$$AppInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$AppInfoDataImpl(
      appVersion: json['app_version'] as String,
      packageName: json['package_name'] as String,
      platform: json['platform'] as String,
      releaseNotes: json['release_notes'] as String?,
      releaseDate: json['release_date'] as String?,
      isCurrent: json['is_current'] as bool,
      maintenance: json['maintenance'] == null
          ? null
          : MaintenanceData.fromJson(
              json['maintenance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppInfoDataImplToJson(_$AppInfoDataImpl instance) =>
    <String, dynamic>{
      'app_version': instance.appVersion,
      'package_name': instance.packageName,
      'platform': instance.platform,
      'release_notes': instance.releaseNotes,
      'release_date': instance.releaseDate,
      'is_current': instance.isCurrent,
      'maintenance': instance.maintenance,
    };

_$MaintenanceDataImpl _$$MaintenanceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenanceDataImpl(
      isMaintenance: json['is_maintenance'] as bool,
      platform: json['platform'] as String,
      announcement: json['announcement'] as String?,
    );

Map<String, dynamic> _$$MaintenanceDataImplToJson(
        _$MaintenanceDataImpl instance) =>
    <String, dynamic>{
      'is_maintenance': instance.isMaintenance,
      'platform': instance.platform,
      'announcement': instance.announcement,
    };
