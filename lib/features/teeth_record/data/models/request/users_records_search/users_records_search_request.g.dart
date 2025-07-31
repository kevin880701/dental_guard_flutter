// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_records_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersRecordsSearchRequestImpl _$$UsersRecordsSearchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersRecordsSearchRequestImpl(
      userIds:
          (json['user_ids'] as List<dynamic>).map((e) => e as String).toList(),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      timeZone: json['time_zone'] as String,
    );

Map<String, dynamic> _$$UsersRecordsSearchRequestImplToJson(
        _$UsersRecordsSearchRequestImpl instance) =>
    <String, dynamic>{
      'user_ids': instance.userIds,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'time_zone': instance.timeZone,
    };
