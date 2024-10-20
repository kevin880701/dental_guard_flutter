import 'package:freezed_annotation/freezed_annotation.dart';

part 'CreateTeethRecordRequestBody.freezed.dart';
part 'CreateTeethRecordRequestBody.g.dart';

@freezed
class CreateTeethRecordRequestBody with _$CreateTeethRecordRequestBody {
  const factory CreateTeethRecordRequestBody({
    @JsonKey(name: 'student') required int student,
    @JsonKey(name: 'images_path') required String imagesPath,
    @JsonKey(name: 'dental_plaque_count') required String dentalPlaqueCount,
  }) = _CreateTeethRecordRequestBody;

  factory CreateTeethRecordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateTeethRecordRequestBodyFromJson(json);
}
