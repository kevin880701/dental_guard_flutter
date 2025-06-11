// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_app_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemAppVersionImpl _$$SystemAppVersionImplFromJson(
        Map<String, dynamic> json) =>
    _$SystemAppVersionImpl(
      id: json['id'] as String,
      appVersion: json['app_version'] as String,
      packageName: json['package_name'] as String,
      platform: json['platform'] as String,
      releaseNotes: json['release_notes'] as String?,
      releaseDate: json['release_date'] as String?,
      isCurrent: json['is_current'] as bool,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SystemAppVersionImplToJson(
        _$SystemAppVersionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_version': instance.appVersion,
      'package_name': instance.packageName,
      'platform': instance.platform,
      'release_notes': instance.releaseNotes,
      'release_date': instance.releaseDate,
      'is_current': instance.isCurrent,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
