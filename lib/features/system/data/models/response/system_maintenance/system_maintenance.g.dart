// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_maintenance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemMaintenanceImpl _$$SystemMaintenanceImplFromJson(
        Map<String, dynamic> json) =>
    _$SystemMaintenanceImpl(
      id: json['id'] as String,
      isMaintenance: json['is_maintenance'] as bool,
      platform: json['platform'] as String,
      announcement: json['announcement'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SystemMaintenanceImplToJson(
        _$SystemMaintenanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_maintenance': instance.isMaintenance,
      'platform': instance.platform,
      'announcement': instance.announcement,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
