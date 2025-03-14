import 'package:freezed_annotation/freezed_annotation.dart';

part 'AddClassResponse.freezed.dart';
part 'AddClassResponse.g.dart';

@freezed
class AddClassResponse with _$AddClassResponse {
  const factory AddClassResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'school') required int school,
    @JsonKey(name: 'grade') required String grade,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'teachers') required List<int> teachers,
  }) = _AddClassResponse;

  factory AddClassResponse.fromJson(Map<String, dynamic> json) =>
      _$AddClassResponseFromJson(json);
}
