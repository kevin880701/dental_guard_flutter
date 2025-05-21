import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_data.freezed.dart';
part 'user_info_data.g.dart';

@freezed
class UserInfoData with _$UserInfoData {
  const factory UserInfoData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'number') required String number,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'birthday') String? birthday,  // ISO 8601 格式日期字串
    @JsonKey(name: 'gender') required int gender,
    @JsonKey(name: 'is_verified') required bool isVerified,
    @JsonKey(name: 'login_type') int? loginType,
    @JsonKey(name: 'role') required int role,
    @JsonKey(name: 'created_at') required String createdAt,  // ISO 8601 格式日期字串
    @JsonKey(name: 'updated_at') required String updatedAt,  // ISO 8601 格式日期字串
  }) = _UserInfoData;

  factory UserInfoData.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDataFromJson(json);
}
