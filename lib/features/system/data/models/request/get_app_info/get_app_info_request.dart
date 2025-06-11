import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_app_info_request.freezed.dart';
part 'get_app_info_request.g.dart';

@freezed
class GetAppInfoRequest with _$GetAppInfoRequest {
  const factory GetAppInfoRequest({
    @JsonKey(name: 'package_name') required String packageName,
    @JsonKey(name: 'platform') required String platform,
  }) = _GetAppInfoRequest;

  factory GetAppInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAppInfoRequestFromJson(json);
}
