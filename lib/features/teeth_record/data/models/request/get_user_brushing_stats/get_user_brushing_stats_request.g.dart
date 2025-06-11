// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_brushing_stats_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserBrushingStatsRequestImpl _$$GetUserBrushingStatsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserBrushingStatsRequestImpl(
      userId: json['user_id'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      timeSpace: json['time_space'] as String,
      needBaseLineData: json['need_base_line_data'] as bool,
    );

Map<String, dynamic> _$$GetUserBrushingStatsRequestImplToJson(
        _$GetUserBrushingStatsRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'time_space': instance.timeSpace,
      'need_base_line_data': instance.needBaseLineData,
    };
