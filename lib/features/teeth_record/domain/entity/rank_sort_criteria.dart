import 'package:freezed_annotation/freezed_annotation.dart';

enum RankSortCriteria {
  @JsonValue('plaque_percent')
  plaquePercent,

  @JsonValue('record_count')
  recordCount,
}
