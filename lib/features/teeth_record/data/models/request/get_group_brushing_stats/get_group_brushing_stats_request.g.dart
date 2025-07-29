// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_brushing_stats_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetGroupBrushingStatsRequestImpl _$$GetGroupBrushingStatsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetGroupBrushingStatsRequestImpl(
      groupId: json['group_id'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      timeSpace: json['time_space'] as String,
      timeZone: json['time_zone'] as String,
      needBaseLineData: json['need_base_line_data'] as bool? ?? true,
    );

Map<String, dynamic> _$$GetGroupBrushingStatsRequestImplToJson(
        _$GetGroupBrushingStatsRequestImpl instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'time_space': instance.timeSpace,
      'time_zone': instance.timeZone,
      'need_base_line_data': instance.needBaseLineData,
    };
