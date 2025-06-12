import 'package:freezed_annotation/freezed_annotation.dart';

part 'brushing_stats_data.freezed.dart';
part 'brushing_stats_data.g.dart';

@freezed
class BrushingStatsData with _$BrushingStatsData {
  const factory BrushingStatsData({
    @JsonKey(name: 'time_group') required DateTime timeGroup,
    @JsonKey(name: 'value') required double value,
    @JsonKey(name: 'base_value') required double baseValue,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'base_count') required int baseCount,
  }) = _BrushingStatsData;

  factory BrushingStatsData.fromJson(Map<String, dynamic> json) =>
      _$BrushingStatsDataFromJson(json);
}
