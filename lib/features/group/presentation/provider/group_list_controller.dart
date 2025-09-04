
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/app_log.dart';
import '../../../../core/utils/utils.dart';
import '../../../organization/application/organization_usecases_provider.dart';
import '../../../organization/data/models/response/group_with_member_count/group_with_member_count_data.dart';
import '../../../organization/data/models/response/organization/organization_data.dart';
part 'group_list_controller.freezed.dart';

final groupListControllerProvider =
StateNotifierProvider<GroupListController, GroupListState>(
      (ref) => GroupListController(ref),
);

@freezed
class GroupListState with _$GroupListState {
  const factory GroupListState({
    @Default([]) List<OrganizationData> organizations,
    @Default(0) int selectedOrganizationIndex,
    @Default([]) List<GroupWithMemberCountData> groups,
    @Default(false) bool isLoadingOrganizations,
    @Default(false) bool isLoadingGroups,
    String? selectedOrganizationId,
    String? error,
  }) = _GroupListState;
}

class GroupListController extends StateNotifier<GroupListState> {
  final Ref ref;

  GroupListController(this.ref) : super(const GroupListState());

  /// 初始化 - 載入用戶組織列表
  Future<void> initialize() async {
    await loadUserOrganizations();
  }

  List<GroupWithMemberCountData> _sortGroupsByName(List<GroupWithMemberCountData> groups) {
    final sortedGroups = List<GroupWithMemberCountData>.from(groups);

    sortedGroups.sort((a, b) {
      final weightA = extractChineseNumberWeight(a.name);
      final weightB = extractChineseNumberWeight(b.name);

      // 先按數字權重排序
      final weightComparison = weightA.compareTo(weightB);
      if (weightComparison != 0) {
        return weightComparison;
      }

      // 如果權重相同，則按名稱的字典序排序
      return a.name.compareTo(b.name);
    });

    return sortedGroups;
  }

  /// 載入用戶所屬組織列表
  Future<void> loadUserOrganizations() async {
    state = state.copyWith(isLoadingOrganizations: true, error: null);

    try {
      final getUserOrganizationsUseCase = ref.read(getUserOrganizationsUseCaseProvider);
      final allOrganizations = await getUserOrganizationsUseCase();

      // TODO: 臨時性功能 - 篩選掉名稱包含"畢業"的組織，並且只有admin權限才能看到
      final organizations = allOrganizations.where((org) {
        final userType = org.type.toLowerCase();
        // admin 用戶可以看到所有組織
        if (userType == 'admin') {
          return true;
        }
        // manager 和 member 用戶篩選掉包含"畢業"的組織
        if (userType == 'manager' || userType == 'member') {
          return !org.name.contains('畢業');
        }
        // 其他類型的用戶也篩選掉包含"畢業"的組織
        return !org.name.contains('畢業');
      }).toList();

      state = state.copyWith(
        organizations: organizations,
        isLoadingOrganizations: false,
      );

      // 如果有組織資料，自動選擇第一個並載入其群組
      if (organizations.isNotEmpty) {
        await selectOrganization(0);
      }
    } catch (e, st) {
      AppLog.e('載入組織列表失敗: $e\n$st');
      state = state.copyWith(
        isLoadingOrganizations: false,
        error: '載入組織列表失敗: $e',
      );
    }
  }

  /// 選擇組織並載入其群組
  Future<void> selectOrganization(int index) async {
    if (index < 0 || index >= state.organizations.length) return;

    final selectedOrganization = state.organizations[index];
    state = state.copyWith(
      selectedOrganizationIndex: index,
      selectedOrganizationId: selectedOrganization.id,
    );

    await loadGroupsByOrganization(selectedOrganization.id);
  }

  /// 根據組織 ID 載入群組列表
  Future<void> loadGroupsByOrganization(String organizationId) async {
    state = state.copyWith(isLoadingGroups: true, error: null);

    try {
      final getGroupsByOrganizationUseCase = ref.read(getGroupsByOrganizationUseCaseProvider);
      final groups = await getGroupsByOrganizationUseCase(organizationId);

      // 對群組進行排序
      final sortedGroups = _sortGroupsByName(groups);

      state = state.copyWith(
        groups: sortedGroups,
        isLoadingGroups: false,
      );
    } catch (e, st) {
      AppLog.e('載入群組列表失敗: $e\n$st');
      state = state.copyWith(
        isLoadingGroups: false,
        error: '載入群組列表失敗: $e',
      );
    }
  }

  /// 重新載入當前組織的群組
  Future<void> refreshGroups() async {
    if (state.selectedOrganizationId != null) {
      await loadGroupsByOrganization(state.selectedOrganizationId!);
    }
  }

  /// 清除狀態
  void clear() {
    state = const GroupListState();
  }

  /// 取得當前選中的組織
  OrganizationData? get selectedOrganization {
    if (state.organizations.isEmpty ||
        state.selectedOrganizationIndex >= state.organizations.length) {
      return null;
    }
    return state.organizations[state.selectedOrganizationIndex];
  }

  /// 取得組織名稱列表（用於下拉選單）
  List<String> get organizationNames {
    return state.organizations.map((org) => org.name).toList();
  }
}