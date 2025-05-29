import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/widgets/button/app_button.dart';
import 'package:dental_guard_flutter/features/auth/application/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/providers/version_info_provider.dart';
import '../../../../core/widgets/image/app_icon.dart';
import '../../../../core/widgets/text/app_text.dart';
import '../../../../core/widgets/text/text_theme.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../../routes/app_router.dart';
import '../../data/models/response/user_info/user_info_data.dart';
import '../widgets/InfoSection.dart';

class PersonalScreen extends HookConsumerWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    final authNotifier = ref.read(authControllerProvider.notifier);
    final versionInfoState = ref.watch(versionInfoProvider);

    useEffect(() {
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleBar(
              title: AppStrings.personal,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    UserWidget(user: authState.userInfoData),
                    InfoSection(
                      sectionTitle: AppStrings.otherInformation,
                      items: [
                        // InfoItem(
                        //   title: AppStrings.feedback,
                        //   showArrow: true,
                        //   onTap: () {
                        //   },
                        // ),
                        InfoItem(
                          title: AppStrings.versionNumber,
                          trailingText: versionInfoState.releaseVersion,
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      child: AppButton(
                        text: AppStrings.logout,
                        onPressed: (){
                          authNotifier.logout();
                          context.router.replaceAll([const LoginRoute()]);
                        },
                        width: double.infinity,
                        backgroundColor: AppColors.primaryBlack,
                        fontColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget UserWidget({required UserInfoData? user}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
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
        // AppIcon(
        //   icon: AppImages.arrowRightIcon,
        //   color: AppColors.primaryBlack,
        // )
      ],
    ),
  );
}
