import 'package:freezed_annotation/freezed_annotation.dart';

part 'StudentListResponse.freezed.dart';
part 'StudentListResponse.g.dart';

@freezed
class StudentListResponse with _$StudentListResponse {
  const factory StudentListResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'school') required int school,
    @JsonKey(name: 'classroom') required int classroom,
    @JsonKey(name: 'birth') required String birth,
    @JsonKey(name: 'gender') required String gender,
  }) = _StudentListResponse;

  factory StudentListResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentListResponseFromJson(json);
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
