import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/providers/page_provider.dart';
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:dental_guard_flutter/core/widgets/button/app_button.dart';
import 'package:dental_guard_flutter/features/auth/application/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/widgets/input/input_type.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../../routes/app_router.dart';
import '../../../login/presentation/widgets/app_date_picker.dart';
import '../../../login/presentation/widgets/app_input.dart';
import '../../application/auth_provider.dart';
import '../widgets/gender_selector.dart';

@RoutePage()
class CreateUserProfileScreen extends HookConsumerWidget {
  const CreateUserProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    final authNotifier = ref.read(authControllerProvider.notifier);
    final user = authState.userInfoData;

    final nameController = useTextEditingController(text: user?.name ?? '');

    // 將 ISO 格式 birthday 轉換為 DateTime
    final selectedDate = useState<DateTime>(
      user?.birthday != null
          ? DateTime.tryParse(user!.birthday!) ?? DateTime.now()
          : DateTime.now(),
    );


    // 將 gender int 轉換為「男」或「女」，不在 0/1 範圍則預設為「男」
    final selectedGender = useState<String>(
      (user?.gender == 1) ? '女' : '男',
    );

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleBar(title: AppStrings.createUserProfile,isBack: true,onBackTap: (){
            authNotifier.logout();
            context.router.replaceAll([const LoginRoute()]);
          },),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  AppInput(
                    title: AppStrings.name,
                    inputType: InputType.ALL,
                    controller: nameController,
                    hintText: AppStrings.plsEnterName,
                  ),
                  const SizedBox(height: 16),
                  AppDatePicker(
                    title: AppStrings.birthday,
                    value: selectedDate.value,
                    onDateSelected: (date) => selectedDate.value = date,
                  ),
                  const SizedBox(height: 16),
                  GenderSelector(selectedGender: selectedGender),
                  const SizedBox(height: 32),
                  AppButton(
                    text: AppStrings.confirm,
                    onPressed: () async {
                      final updateUserProfileUseCase = ref.read(updateUserProfileUseCaseProvider);

                      final name = nameController.text.trim();

                      // 檢查姓名必填
                      if (name.isEmpty) {
                        ref.read(pageNotifierProvider.notifier)
                            .showToastMessage(message: AppStrings.plsEnterName);
                        return;
                      }

                      int genderInt = selectedGender.value == '女' ? 1 : 0;
                      final birthdayStr = selectedDate.value.toIsoDateTime();

                      // 呼叫用戶資料更新
                      final result = await updateUserProfileUseCase.execute(
                        userId: user!.id,
                        name: name,
                        birthday: birthdayStr,
                        gender: genderInt,
                      );

                      if (result == null) {
                        ref.read(pageNotifierProvider.notifier)
                            .showToastMessage(message: AppStrings.createFailedPlsLoginAgain);
                        ref.read(authControllerProvider.notifier).logout();
                        context.router.replaceAll([const LoginRoute()]);
                      } else {
                        context.router.replaceAll([const MainRoute()]);
                      }
                    },
                    width: double.infinity,
                    backgroundColor: AppColors.primaryBlack,
                    fontColor: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
