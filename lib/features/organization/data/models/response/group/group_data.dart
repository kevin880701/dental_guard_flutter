import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_data.freezed.dart';
part 'group_data.g.dart';

@freezed
class GroupData with _$GroupData {
  const factory GroupData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _GroupData;

  factory GroupData.fromJson(Map<String, dynamic> json) => _$GroupDataFromJson(json);
}
