import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_app_version_request.freezed.dart';
part 'upload_app_version_request.g.dart';

@freezed
class UploadAppVersionRequest with _$UploadAppVersionRequest {
  const factory UploadAppVersionRequest({
    @JsonKey(name: 'package_name') required String packageName,
    @JsonKey(name: 'app_version') required String appVersion,
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'release_notes') String? releaseNotes,
  }) = _UploadAppVersionRequest;

  factory UploadAppVersionRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadAppVersionRequestFromJson(json);
}
