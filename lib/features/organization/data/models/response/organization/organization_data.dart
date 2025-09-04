
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_data.freezed.dart';
part 'organization_data.g.dart';

@freezed
class OrganizationData with _$OrganizationData {
  const factory OrganizationData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'type') required String type, // admin、manager、user
  }) = _OrganizationData;

  factory OrganizationData.fromJson(Map<String, dynamic> json) =>
      _$OrganizationDataFromJson(json);
}