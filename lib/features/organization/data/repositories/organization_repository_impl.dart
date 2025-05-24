import 'package:dental_guard_flutter/features/auth/data/models/response/user_info/user_info_data.dart';
import '../../../../core/models/api_response.dart';
import '../../data/models/request/create_group/create_group_request.dart';
import '../../data/models/request/group_member/group_member_request.dart';
import '../../data/models/response/groups_manage/groups_manage_data.dart';
import '../../data/datasources/organization_remote_datasource.dart';
import '../models/request/add_group_member_extended/add_group_member_extended_request.dart';
import '../models/request/update_group_name/update_group_name_request.dart';
import '../models/response/group/group_data.dart';

abstract class OrganizationRepository {
  Future<GroupsManageData?> getManagedGroups();
  Future<GroupData?> createGroup(CreateGroupRequest request);
  Future<bool> addGroupMember(GroupMemberRequest request);
  Future<bool> removeGroupMember(GroupMemberRequest request);
  Future<List<UserInfoData>> getGroupUsers(String groupId);
  Future<GroupData?> getGroupById(String groupId);
  Future<ApiResponse<UserInfoData?>> addGroupMemberExtended(AddGroupMemberExtendedRequest request);
  Future<ApiResponse<GroupData?>> updateGroupName(UpdateGroupNameRequest request);
}

class OrganizationRepositoryImpl implements OrganizationRepository {
  final OrganizationRemoteDataSource remoteDataSource;

  OrganizationRepositoryImpl(this.remoteDataSource);

  @override
  Future<GroupsManageData?> getManagedGroups() async {
    return await remoteDataSource.getManagedGroups();
  }

  @override
  Future<GroupData?> createGroup(CreateGroupRequest request) async {
    return await remoteDataSource.createGroup(request);
  }

  @override
  Future<bool> addGroupMember(GroupMemberRequest request) async {
    return await remoteDataSource.addGroupMember(request);
  }

  @override
  Future<bool> removeGroupMember(GroupMemberRequest request) async {
    return await remoteDataSource.removeGroupMember(request);
  }

  @override
  Future<List<UserInfoData>> getGroupUsers(String groupId) async {
    return await remoteDataSource.getGroupUsers(groupId);
  }

  @override
  Future<GroupData?> getGroupById(String groupId) async {
    return await remoteDataSource.getGroupById(groupId);
  }

  @override
  Future<ApiResponse<UserInfoData?>> addGroupMemberExtended(AddGroupMemberExtendedRequest request) async {
    return await remoteDataSource.addGroupMemberExtended(request);
  }

  @override
  Future<ApiResponse<GroupData?>> updateGroupName(UpdateGroupNameRequest request) async {
    return await remoteDataSource.updateGroupName(request);
  }
}
