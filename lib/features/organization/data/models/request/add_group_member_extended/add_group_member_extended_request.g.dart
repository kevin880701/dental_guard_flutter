// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_group_member_extended_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddGroupMemberExtendedRequestImpl
    _$$AddGroupMemberExtendedRequestImplFromJson(Map<String, dynamic> json) =>
        _$AddGroupMemberExtendedRequestImpl(
          organizationId: json['organization_id'] as String,
          groupId: json['group_id'] as String,
          number: json['number'] as String,
          name: json['name'] as String,
          email: json['email'] as String?,
          phone: json['phone'] as String?,
          avatarUrl: json['avatar_url'] as String?,
          birthday: json['birthday'] as String,
          gender: (json['gender'] as num).toInt(),
        );

Map<String, dynamic> _$$AddGroupMemberExtendedRequestImplToJson(
        _$AddGroupMemberExtendedRequestImpl instance) =>
    <String, dynamic>{
      'organization_id': instance.organizationId,
      'group_id': instance.groupId,
      'number': instance.number,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar_url': instance.avatarUrl,
      'birthday': instance.birthday,
      'gender': instance.gender,
    };
