import 'package:freezed_annotation/freezed_annotation.dart';

part 'TeethRecordsResponse.freezed.dart';
part 'TeethRecordsResponse.g.dart';

@freezed
class TeethRecordsResponse with _$TeethRecordsResponse {
  const factory TeethRecordsResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'student') required int student,
    @JsonKey(name: 'date_time') required String dateTime,
    @JsonKey(name: 'images_path') required String imagesPath,
    @JsonKey(name: 'dental_plaque_count') required int dentalPlaqueCount,
  }) = _TeethRecordsResponse;

  factory TeethRecordsResponse.fromJson(Map<String, dynamic> json) =>
      _$TeethRecordsResponseFromJson(json);
}
