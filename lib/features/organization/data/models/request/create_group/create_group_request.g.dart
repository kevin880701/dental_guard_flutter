// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGroupRequestImpl _$$CreateGroupRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateGroupRequestImpl(
      organizationId: json['organization_id'] as String,
      groupName: json['group_name'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$CreateGroupRequestImplToJson(
        _$CreateGroupRequestImpl instance) =>
    <String, dynamic>{
      'organization_id': instance.organizationId,
      'group_name': instance.groupName,
      'user_id': instance.userId,
    };
