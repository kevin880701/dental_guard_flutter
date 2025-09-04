// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_with_member_count_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupWithMemberCountDataImpl _$$GroupWithMemberCountDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupWithMemberCountDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      memberCount: (json['member_count'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$GroupWithMemberCountDataImplToJson(
        _$GroupWithMemberCountDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'member_count': instance.memberCount,
      'type': instance.type,
    };
