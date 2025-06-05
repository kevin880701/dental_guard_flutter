import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/base/base_page.dart';
import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:dental_guard_flutter/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/utils/app_toast.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/widgets/button/app_button.dart';
import '../../../../core/widgets/image/app_icon.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../auth/application/auth_provider.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../organization/application/organization_controller.dart';
import '../providers/member_info_controller.dart';
import '../providers/member_list_controller.dart';
import '../widgets/BrushingRecordItem.dart';
import '../widgets/MemberItem.dart';

@RoutePage()
class MemberInfoScreen extends HookConsumerWidget {
  final UserInfoData user;

  const MemberInfoScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(memberInfoControllerProvider);
    final controller = ref.read(memberInfoControllerProvider.notifier);

    useEffect(() {
      Future.microtask(() {
        controller.setUser(user);
        controller.loadUserBrushingRecords(user.id);
      });
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: Column(
        children: [
          TitleBar(
            title: state.user?.name ?? "",
            onBackTap: () {
              context.pop();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: MemberInfoWidget(
              user: state.user,
              onEditTap: () async {
                showEditMemberDialog(
                  context,
                  onSubmit: ({
                    required String name,
                  }) async {
                    final useCase = ref.read(updateUserProfileUseCaseProvider);
                    final result = await useCase.execute(
                       userId: state.user!.id,
                      name:name,
                    );
                    if (result != null) {
                      controller.setUser(result);
                      ref.read(organizationControllerProvider.notifier).loadManagedGroups();
                      ref.read(memberListControllerProvider.notifier).loadMembersByGroupId();
                      AppToast.showToast(message: AppStrings.createSuccess);
                    } else {
                      AppToast.showToast(message: AppStrings.createFailed);
                    }
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                AppIcon(
                    icon: AppImages.listIcon,
                    size: 24,
                    color: AppColors.primaryBlack),
                AppText(text: AppStrings.toothBrushingRecord),
                Spacer(),
                AppButton(
                  text: AppStrings.addRecordPlus,
                  fontColor: AppColors.white,
                  backgroundColor: AppColors.primaryBlack,
                  onPressed: () {
                    context.pushRoute(TeethDetectionRoute(userId: user.id));
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (state.brushingRecords.isEmpty)
            AppText(
              text: AppStrings.noTeethRecord,
              textStyle: bodyLarge,
            )
          else
            Expanded(
              child: ListView.builder(
                itemCount: state.brushingRecords.length,
                itemBuilder: (context, index) {
                  final record = state.brushingRecords[index];
                  return BrushingRecordItem(
                    brushingRecordData: record,
                    onTap: () {
                      context.pushRoute(TeethDetectionRoute(
                          userId: user.id, brushingRecordData: record));
                    },
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

Widget MemberInfoWidget({required UserInfoData? user, required VoidCallback onEditTap}) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.borderGrey),
    ),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.grey,
          child: Icon(Icons.person, color: Colors.white),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: user?.name ?? "",
                textStyle: bodyLarge,
              ),
              AppText(
                text: user?.number ?? "",
                textStyle: bodyMedium,
                color: AppColors.grey,
              ),
            ],
          ),
        ),
        AppIcon(icon: AppImages.editIcon,color: AppColors.primaryBlack,onTap: onEditTap,)
      ],
    ),
  );
}
