import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_system_maintenance_request.freezed.dart';
part 'get_system_maintenance_request.g.dart';

@freezed
class GetSystemMaintenanceRequest with _$GetSystemMaintenanceRequest {
  const factory GetSystemMaintenanceRequest({
    @JsonKey(name: 'platform') required String platform,
  }) = _GetSystemMaintenanceRequest;

  factory GetSystemMaintenanceRequest.fromJson(Map<String, dynamic> json) =>
      _$GetSystemMaintenanceRequestFromJson(json);
}
