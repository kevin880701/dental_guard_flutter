import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_brushing_stats_data.freezed.dart';
part 'group_brushing_stats_data.g.dart';

@freezed
class GroupBrushingStatsData with _$GroupBrushingStatsData {
  const factory GroupBrushingStatsData({
    @JsonKey(name: 'time_group') required DateTime timeGroup,
    @JsonKey(name: 'value') required double value,
    @JsonKey(name: 'base_value') required double baseValue,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'base_count') required int baseCount,
  }) = _GroupBrushingStatsData;

  factory GroupBrushingStatsData.fromJson(Map<String, dynamic> json) =>
      _$GroupBrushingStatsDataFromJson(json);
}
