// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_brushing_stats_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupBrushingStatsDataImpl _$$GroupBrushingStatsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupBrushingStatsDataImpl(
      timeGroup: DateTime.parse(json['time_group'] as String),
      value: (json['value'] as num).toDouble(),
      baseValue: (json['base_value'] as num).toDouble(),
      count: (json['count'] as num).toInt(),
      baseCount: (json['base_count'] as num).toInt(),
    );

Map<String, dynamic> _$$GroupBrushingStatsDataImplToJson(
        _$GroupBrushingStatsDataImpl instance) =>
    <String, dynamic>{
      'time_group': instance.timeGroup.toIso8601String(),
      'value': instance.value,
      'base_value': instance.baseValue,
      'count': instance.count,
      'base_count': instance.baseCount,
    };
