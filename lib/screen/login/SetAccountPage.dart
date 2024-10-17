import 'package:dental_guard_flutter/route/AppRouter.dart';
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
class SetAccountPage extends HookConsumerWidget {
  const SetAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountController = useTextEditingController();
    final _isClickable = useState(false);
    // final userNotifier = ref.read(userProvider.notifier);

    useEffect(() {
      void updateIsClickable() {
        _isClickable.value = accountController.text.isNotEmpty;
      }

      accountController.addListener(updateIsClickable);

      updateIsClickable();

      return () {
        accountController.removeListener(updateIsClickable);
      };
    }, [accountController.text]);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      onWillPop: () async {
        goLogin(context, ref);
        return false;
      },
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginTitlebar(title: AppTexts.setAccount, context: context, isBack: true),
              gapH16,
              InputWidget(
                fieldName: AppTexts.accountField,
                hintText: AppTexts.plsEnterYourAccount,
                controller: accountController,
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
                            AutoRouter.of(context).push(SetPasswordRoute(
                              account: accountController.text,
                            ));
                          }
                        : null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
