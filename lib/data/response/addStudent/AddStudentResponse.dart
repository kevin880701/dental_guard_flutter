import 'package:freezed_annotation/freezed_annotation.dart';

part 'AddStudentResponse.freezed.dart';
part 'AddStudentResponse.g.dart';

@freezed
class AddStudentResponse with _$AddStudentResponse {
  const factory AddStudentResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'school') required int school,
    @JsonKey(name: 'classroom') required int classroom,
    @JsonKey(name: 'birth') required String birth,
    @JsonKey(name: 'gender') required String gender,
  }) = _AddStudentResponse;

  factory AddStudentResponse.fromJson(Map<String, dynamic> json) =>
      _$AddStudentResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'line_id') String? lineId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
