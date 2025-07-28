// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brushing_stats_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrushingStatsDataImpl _$$BrushingStatsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BrushingStatsDataImpl(
      time: DateTime.parse(json['time'] as String),
      avgPlaquePercent: (json['avg_plaque_percent'] as num).toDouble(),
      baselineAvgPlaquePercent:
          (json['baseline_avg_plaque_percent'] as num).toDouble(),
      recordCount: (json['record_count'] as num).toInt(),
      baselineRecordCount: (json['baseline_record_count'] as num).toInt(),
    );

Map<String, dynamic> _$$BrushingStatsDataImplToJson(
        _$BrushingStatsDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'avg_plaque_percent': instance.avgPlaquePercent,
      'baseline_avg_plaque_percent': instance.baselineAvgPlaquePercent,
      'record_count': instance.recordCount,
      'baseline_record_count': instance.baselineRecordCount,
    };
