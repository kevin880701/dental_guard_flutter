import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_brushing_record_request.freezed.dart';
part 'create_brushing_record_request.g.dart';

@freezed
class CreateBrushingRecordRequest with _$CreateBrushingRecordRequest {
  const factory CreateBrushingRecordRequest({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'score') required int score,
    @JsonKey(name: 'remarks') String? remarks,
  }) = _CreateBrushingRecordRequest;

  factory CreateBrushingRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBrushingRecordRequestFromJson(json);
}
