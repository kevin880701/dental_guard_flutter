// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_group_name_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateGroupNameRequestImpl _$$UpdateGroupNameRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateGroupNameRequestImpl(
      groupId: json['group_id'] as String,
      newName: json['new_name'] as String,
    );

Map<String, dynamic> _$$UpdateGroupNameRequestImplToJson(
        _$UpdateGroupNameRequestImpl instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'new_name': instance.newName,
    };
