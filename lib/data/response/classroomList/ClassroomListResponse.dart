import 'package:freezed_annotation/freezed_annotation.dart';

part 'ClassroomListResponse.freezed.dart';
part 'ClassroomListResponse.g.dart';

@freezed
class ClassroomListResponse with _$ClassroomListResponse {
  const factory ClassroomListResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'school') required int school,
    @JsonKey(name: 'grade') required String grade,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'teachers') required List<int> teachers,
  }) = _ClassroomListResponse;

  factory ClassroomListResponse.fromJson(Map<String, dynamic> json) =>
      _$ClassroomListResponseFromJson(json);
}
