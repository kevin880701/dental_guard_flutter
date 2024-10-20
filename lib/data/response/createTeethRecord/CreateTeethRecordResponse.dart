import 'package:freezed_annotation/freezed_annotation.dart';

part 'CreateTeethRecordResponse.freezed.dart';
part 'CreateTeethRecordResponse.g.dart';

@freezed
class CreateTeethRecordResponse with _$CreateTeethRecordResponse {
  const factory CreateTeethRecordResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'date_time') required String dateTime,
    @JsonKey(name: 'images_path') required String imagesPath,
    @JsonKey(name: 'dental_plaque_count') required String dentalPlaqueCount,
    @JsonKey(name: 'student') required int student,
  }) = _CreateTeethRecordResponse;

  factory CreateTeethRecordResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateTeethRecordResponseFromJson(json);
}
