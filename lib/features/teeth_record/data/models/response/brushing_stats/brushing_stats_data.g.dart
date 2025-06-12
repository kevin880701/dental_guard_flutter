// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brushing_stats_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrushingStatsDataImpl _$$BrushingStatsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BrushingStatsDataImpl(
      timeGroup: DateTime.parse(json['time_group'] as String),
      value: (json['value'] as num).toDouble(),
      baseValue: (json['base_value'] as num).toDouble(),
      count: (json['count'] as num).toInt(),
      baseCount: (json['base_count'] as num).toInt(),
    );

Map<String, dynamic> _$$BrushingStatsDataImplToJson(
        _$BrushingStatsDataImpl instance) =>
    <String, dynamic>{
      'time_group': instance.timeGroup.toIso8601String(),
      'value': instance.value,
      'base_value': instance.baseValue,
      'count': instance.count,
      'base_count': instance.baseCount,
    };
