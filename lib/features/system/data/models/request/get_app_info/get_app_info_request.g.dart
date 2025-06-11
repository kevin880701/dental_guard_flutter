// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_app_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAppInfoRequestImpl _$$GetAppInfoRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAppInfoRequestImpl(
      packageName: json['package_name'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$$GetAppInfoRequestImplToJson(
        _$GetAppInfoRequestImpl instance) =>
    <String, dynamic>{
      'package_name': instance.packageName,
      'platform': instance.platform,
    };
