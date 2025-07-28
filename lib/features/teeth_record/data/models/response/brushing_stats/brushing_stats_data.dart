import 'package:freezed_annotation/freezed_annotation.dart';

part 'brushing_stats_data.freezed.dart';
part 'brushing_stats_data.g.dart';

@freezed
class BrushingStatsData with _$BrushingStatsData {
  const factory BrushingStatsData({
    @JsonKey(name: 'time') required DateTime time,
    @JsonKey(name: 'avg_plaque_percent') required double avgPlaquePercent,
    @JsonKey(name: 'baseline_avg_plaque_percent') required double baselineAvgPlaquePercent,
    @JsonKey(name: 'record_count') required int recordCount,
    @JsonKey(name: 'baseline_record_count') required int baselineRecordCount,
  }) = _BrushingStatsData;

  factory BrushingStatsData.fromJson(Map<String, dynamic> json) =>
      _$BrushingStatsDataFromJson(json);
}
