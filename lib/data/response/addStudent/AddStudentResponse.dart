import 'package:json_annotation/json_annotation.dart';

part 'AddStudentResponse.g.dart';

@JsonSerializable()
class AddStudentResponse {
  @JsonKey(name: 'id')
  final int id;

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

  AddStudentResponse({
    required this.id,
    required this.user,
    required this.studentId,
    required this.school,
    required this.classroom,
    required this.birth,
    required this.gender,
  });

  factory AddStudentResponse.fromJson(Map<String, dynamic> json) => _$AddStudentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AddStudentResponseToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'full_name')
  final String fullName;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'line_id')
  final String lineId;

  User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.email,
    required this.lineId,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
