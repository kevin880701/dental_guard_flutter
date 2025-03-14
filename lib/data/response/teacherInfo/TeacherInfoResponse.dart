import 'package:freezed_annotation/freezed_annotation.dart';
part 'TeacherInfoResponse.freezed.dart';
part 'TeacherInfoResponse.g.dart';

@freezed
class TeacherInfoResponse with _$TeacherInfoResponse {
  const factory TeacherInfoResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'school') required int school,
    @JsonKey(name: 'gender') required String gender,
    @JsonKey(name: 'birth') required String birth,
    @JsonKey(name: 'phone_number') required String phoneNumber,
  }) = _TeacherInfoResponse;

  factory TeacherInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$TeacherInfoResponseFromJson(json);
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