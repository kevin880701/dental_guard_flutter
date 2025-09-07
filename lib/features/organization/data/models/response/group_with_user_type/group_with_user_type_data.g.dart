// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_with_user_type_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupWithUserTypeDataImpl _$$GroupWithUserTypeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupWithUserTypeDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      memberCount: (json['member_count'] as num).toInt(),
      managerCount: (json['manager_count'] as num).toInt(),
      adminCount: (json['admin_count'] as num).toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupWithUserTypeDataImplToJson(
        _$GroupWithUserTypeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'member_count': instance.memberCount,
      'manager_count': instance.managerCount,
      'admin_count': instance.adminCount,
      'type': instance.type,
    };
