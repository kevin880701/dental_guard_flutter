import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_app_version.freezed.dart';
part 'system_app_version.g.dart';

@freezed
class SystemAppVersion with _$SystemAppVersion {
  const factory SystemAppVersion({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'app_version') required String appVersion,
    @JsonKey(name: 'package_name') required String packageName,
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'release_notes') String? releaseNotes,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'is_current') required bool isCurrent,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SystemAppVersion;

  factory SystemAppVersion.fromJson(Map<String, dynamic> json) =>
      _$SystemAppVersionFromJson(json);
}
