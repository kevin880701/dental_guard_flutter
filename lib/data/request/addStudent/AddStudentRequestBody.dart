import 'package:json_annotation/json_annotation.dart';

part 'AddStudentRequestBody.g.dart';

@JsonSerializable()
class AddStudentRequestBody {
  @JsonKey(name: 'user')
  final User user;

  @JsonKey(name: 'student_id')
  final String studentId;

  @JsonKey(name: 'school')
  final int school;

  @JsonKey(name: 'classroom')
  final int classroom;

  @JsonKey(name: 'birth')
  final String birth;

  @JsonKey(name: 'gender')
  final String gender;

  AddStudentRequestBody({
    required this.user,
    required this.studentId,
    required this.school,
    required this.classroom,
    required this.birth,
    required this.gender,
  });

  factory AddStudentRequestBody.fromJson(Map<String, dynamic> json) => _$AddStudentRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$AddStudentRequestBodyToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'full_name')
  final String fullName;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'line_id')
  final String lineId;

  User({
    required this.username,
    required this.password,
    required this.fullName,
    required this.email,
    required this.lineId,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
