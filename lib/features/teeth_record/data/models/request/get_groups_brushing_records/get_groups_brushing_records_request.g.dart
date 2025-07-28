// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_brushing_records_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetGroupsBrushingRecordsRequestImpl
    _$$GetGroupsBrushingRecordsRequestImplFromJson(Map<String, dynamic> json) =>
        _$GetGroupsBrushingRecordsRequestImpl(
          groupIds: (json['group_ids'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          startDate: json['start_date'] as String,
          endDate: json['end_date'] as String,
          timeZone: json['time_zone'] as String,
        );

Map<String, dynamic> _$$GetGroupsBrushingRecordsRequestImplToJson(
        _$GetGroupsBrushingRecordsRequestImpl instance) =>
    <String, dynamic>{
      'group_ids': instance.groupIds,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'time_zone': instance.timeZone,
    };
