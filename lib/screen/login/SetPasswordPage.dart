import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
import 'package:dental_guard_flutter/widgets/login/LoginTitlebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';

@RoutePage()
class SetPasswordPage extends HookConsumerWidget {
  const SetPasswordPage({super.key, required this.account});
  final String account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();
    final _isClickable = useState(false);
    // final userNotifier = ref.read(userProvider.notifier);

    useEffect(() {
      void updateIsClickable() {
        _isClickable.value = passwordController.text.isNotEmpty;
      }

      passwordController.addListener(updateIsClickable);

      updateIsClickable();

      return () {
        passwordController.removeListener(updateIsClickable);
      };
    }, [passwordController.text]);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginTitlebar(title: AppTexts.setPassword, context: context, isBack: true),
              gapH16,
              InputWidget(
                fieldName: AppTexts.passwordField,
                hintText: AppTexts.plsEnterYourPassword,
                controller: passwordController,
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: roundedButton(
                    text: AppTexts.confirm,
                    bgColor: _isClickable.value ? AppColors.primaryBlack : AppColors.disableGrey,
                    fontColor: AppColors.white,
                    onTap: _isClickable.value
                        ? () {
                      AutoRouter.of(context).push(SetUserInfoRoute(
                        account: account,
                        password: passwordController.text,
                      ));
                    }: null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}