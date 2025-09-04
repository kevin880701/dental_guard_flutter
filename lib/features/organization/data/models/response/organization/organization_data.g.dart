// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationDataImpl _$$OrganizationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$OrganizationDataImplToJson(
        _$OrganizationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'type': instance.type,
    };
