import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_maintenance.freezed.dart';
part 'system_maintenance.g.dart';

@freezed
class SystemMaintenance with _$SystemMaintenance {
  const factory SystemMaintenance({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'is_maintenance') required bool isMaintenance,
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'announcement') String? announcement,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SystemMaintenance;

  factory SystemMaintenance.fromJson(Map<String, dynamic> json) =>
      _$SystemMaintenanceFromJson(json);
}
