// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupMemberRequestImpl _$$GroupMemberRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupMemberRequestImpl(
      groupId: json['group_id'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$GroupMemberRequestImplToJson(
        _$GroupMemberRequestImpl instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'user_id': instance.userId,
    };
