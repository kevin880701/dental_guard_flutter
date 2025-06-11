import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_system_maintenance_request.freezed.dart';
part 'upload_system_maintenance_request.g.dart';

@freezed
class UploadSystemMaintenanceRequest with _$UploadSystemMaintenanceRequest {
  const factory UploadSystemMaintenanceRequest({
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'isMaintenance') required bool isMaintenance,
    @JsonKey(name: 'maintenanceStart') required String maintenanceStart,
    @JsonKey(name: 'maintenanceEnd') required String maintenanceEnd,
    @JsonKey(name: 'announcement') String? announcement,
  }) = _UploadSystemMaintenanceRequest;

  factory UploadSystemMaintenanceRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadSystemMaintenanceRequestFromJson(json);
}
