import 'package:freezed_annotation/freezed_annotation.dart';

part 'AddClassRequestBody.freezed.dart';
part 'AddClassRequestBody.g.dart';

@freezed
class AddClassRequestBody with _$AddClassRequestBody {
  const factory AddClassRequestBody({
    @JsonKey(name: 'school') required int school,
    @JsonKey(name: 'grade') required String grade,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'teachers') required List<int> teachers,
  }) = _AddClassRequestBody;

  factory AddClassRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddClassRequestBodyFromJson(json);
}
