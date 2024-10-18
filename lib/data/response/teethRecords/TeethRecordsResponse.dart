import 'package:json_annotation/json_annotation.dart';

part 'TeethRecordsResponse.g.dart';

@JsonSerializable()
class TeethRecordsResponse {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'student')
  final int student;

  @JsonKey(name: 'date_time')
  final String dateTime;

  @JsonKey(name: 'images_path')
  final String imagesPath;

  @JsonKey(name: 'dental_plaque_count')
  final int dentalPlaqueCount;

  TeethRecordsResponse({
    required this.id,
    required this.student,
    required this.dateTime,
    required this.imagesPath,
    required this.dentalPlaqueCount,
  });

  factory TeethRecordsResponse.fromJson(Map<String, dynamic> json) => _$TeethRecordsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TeethRecordsResponseToJson(this);
}
