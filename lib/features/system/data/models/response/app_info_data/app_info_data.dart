import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info_data.freezed.dart';
part 'app_info_data.g.dart';

@freezed
class AppInfoData with _$AppInfoData {
  const factory AppInfoData({
    @JsonKey(name: 'app_version') required String appVersion,
    @JsonKey(name: 'package_name') required String packageName,
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'release_notes') String? releaseNotes,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'is_current') required bool isCurrent,
    @JsonKey(name: 'maintenance') required MaintenanceData maintenance,
  }) = _AppInfoData;

  factory AppInfoData.fromJson(Map<String, dynamic> json) =>
      _$AppInfoDataFromJson(json);
}

@freezed
class MaintenanceData with _$MaintenanceData {
  const factory MaintenanceData({
    @JsonKey(name: 'is_maintenance') required bool isMaintenance,
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'announcement') String? announcement,
  }) = _MaintenanceData;

  factory MaintenanceData.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDataFromJson(json);
}
