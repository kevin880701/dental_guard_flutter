
import 'package:dental_guard_flutter/features/auth/data/models/response/user_info/user_info_data.dart';

import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/network/network_interface.dart';
import '../models/request/add_group_member_extended/add_group_member_extended_request.dart';
import '../models/request/create_group/create_group_request.dart';
import '../models/request/group_member/group_member_request.dart';
import '../models/response/group/group_data.dart';
import '../models/response/groups_manage/groups_manage_data.dart';

class OrganizationRemoteDataSource {
  final NetworkInterface networkInterface;

  OrganizationRemoteDataSource(this.networkInterface);

  /// 取得管理的群組
  Future<GroupsManageData> getManagedGroups() async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getManagedGroups,
    );

    final apiResponse = ApiResponse<GroupsManageData>.fromJson(
      response.data,
          (json) => GroupsManageData.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }

  /// 建立群組
  Future<GroupData?> createGroup(CreateGroupRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.createGroup,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<GroupData?>.fromJson(
      response.data,
          (json) => nullableFromJson(json, GroupData.fromJson),
    );

    return apiResponse.data;
  }

  /// 新增群組成員
  Future<bool> addGroupMember(GroupMemberRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.addGroupMember,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<bool>.fromJson(
      response.data,
          (json) => json as bool,
    );

    return apiResponse.data;
  }

  /// 移除群組成員
  Future<bool> removeGroupMember(GroupMemberRequest request) async {
    final response = await networkInterface.delete(
      url: ApiEndPoint.removeGroupMember,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<bool>.fromJson(
      response.data,
          (json) => json as bool,
    );

    return apiResponse.data;
  }

  /// 查詢群組成員
  Future<List<UserInfoData>> getGroupUsers(String groupId) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getGroupUsers(groupId),
    );

    final apiResponse = ApiResponse<List<UserInfoData>>.fromJson(
      response.data,
          (json) => (json as List)
          .map((item) => UserInfoData.fromJson(item as Map<String, dynamic>))
          .toList(),
    );

    return apiResponse.data;
  }

  /// 查詢指定群組資訊
  Future<GroupData> getGroupById(String groupId) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getGroupById(groupId),
    );

    final apiResponse = ApiResponse<GroupData>.fromJson(
      response.data,
          (json) => GroupData.fromJson(json as Map<String, dynamic>),
    );

    return apiResponse.data;
  }

  /// 新增群組成員（含帳號）
  Future<ApiResponse<UserInfoData?>> addGroupMemberExtended(AddGroupMemberExtendedRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.addGroupMemberExtended,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<UserInfoData?>.fromJson(
      response.data,
          (json) => nullableFromJson(json, UserInfoData.fromJson),
    );

    return apiResponse;
  }
}
