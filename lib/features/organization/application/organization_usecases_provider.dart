import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/network_interface.dart';
import '../data/datasources/organization_remote_datasource.dart';
import '../data/repositories/organization_repository_impl.dart';
import '../domain/usecase/add_group_member_extended_usecase.dart';
import '../domain/usecase/add_group_member_usecase.dart';
import '../domain/usecase/create_group_usecase.dart';
import '../domain/usecase/get_group_by_id_usecase.dart';
import '../domain/usecase/get_group_users_usecase.dart';
import '../domain/usecase/get_managed_groups_usecase.dart';
import '../domain/usecase/remove_group_member_usecase.dart';

final organizationRepositoryProvider = Provider<OrganizationRepository>((ref) {
  return OrganizationRepositoryImpl(
    OrganizationRemoteDataSource(NetworkInterface.getInstance()),
  );
});

/// UseCases Providers
final getManagedGroupsUseCaseProvider = Provider<GetManagedGroupsUseCase>((ref) {
  final repo = ref.read(organizationRepositoryProvider);
  return GetManagedGroupsUseCase(repo);
});

final createGroupUseCaseProvider = Provider<CreateGroupUseCase>((ref) {
  final repo = ref.read(organizationRepositoryProvider);
  return CreateGroupUseCase(repo);
});

final addGroupMemberUseCaseProvider = Provider<AddGroupMemberUseCase>((ref) {
  final repo = ref.read(organizationRepositoryProvider);
  return AddGroupMemberUseCase(repo);
});

final removeGroupMemberUseCaseProvider = Provider<RemoveGroupMemberUseCase>((ref) {
  final repo = ref.read(organizationRepositoryProvider);
  return RemoveGroupMemberUseCase(repo);
});

final getGroupUsersUseCaseProvider = Provider<GetGroupUsersUseCase>((ref) {
  final repo = ref.read(organizationRepositoryProvider);
  return GetGroupUsersUseCase(repo);
});

final getGroupByIdUseCaseProvider = Provider<GetGroupByIdUseCase>((ref) {
  final repo = ref.read(organizationRepositoryProvider);
  return GetGroupByIdUseCase(repo);
});

final addGroupMemberExtendedUseCaseProvider = Provider<AddGroupMemberExtendedUseCase>((ref) {
  final repo = ref.read(organizationRepositoryProvider);
  return AddGroupMemberExtendedUseCase(repo);
});
