import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_brushing_stats_data.freezed.dart';
part 'user_brushing_stats_data.g.dart';

@freezed
class UserBrushingStatsData with _$UserBrushingStatsData {
  const factory UserBrushingStatsData({
    @JsonKey(name: 'time_group') required DateTime timeGroup,
    @JsonKey(name: 'value') required double value,
    @JsonKey(name: 'base_value') required double baseValue,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'base_count') required int baseCount,
  }) = _UserBrushingStatsData;

  factory UserBrushingStatsData.fromJson(Map<String, dynamic> json) =>
      _$UserBrushingStatsDataFromJson(json);
}
