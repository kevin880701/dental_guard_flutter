// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_app_version_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadAppVersionRequestImpl _$$UploadAppVersionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadAppVersionRequestImpl(
      packageName: json['package_name'] as String,
      appVersion: json['app_version'] as String,
      platform: json['platform'] as String,
      releaseDate: json['release_date'] as String,
      releaseNotes: json['release_notes'] as String?,
    );

Map<String, dynamic> _$$UploadAppVersionRequestImplToJson(
        _$UploadAppVersionRequestImpl instance) =>
    <String, dynamic>{
      'package_name': instance.packageName,
      'app_version': instance.appVersion,
      'platform': instance.platform,
      'release_date': instance.releaseDate,
      'release_notes': instance.releaseNotes,
    };
