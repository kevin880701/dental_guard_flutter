import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/DropdownWidget.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/extensions/PageExtensions.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:dental_guard_flutter/utils/ToastHelper.dart';

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isPasswordVisible = useState(false);
    final lastBackPressed = useState<DateTime?>(null);
    final _isKeepLogin = useState<bool>(false);
    final ValueNotifier<int?> selectedIndex = ValueNotifier<int?>(null);
    void _login() {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      ref.showLoading(cancellable: true);

      Future.delayed(Duration(seconds: 2), () {
        final isCancelled = ref.read(pageProvider).isCancelled;

        if (!isCancelled) {
          ref.hideLoading();
          AutoRouter.of(context).push(const MainRoute());
        }
      });
    }

    Future<bool> _onWillPop() async {
      final now = DateTime.now();
      if (lastBackPressed.value == null ||
          now.difference(lastBackPressed.value!) > Duration(seconds: 2)) {
        lastBackPressed.value = now;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('再按一次退出程式'),
            duration: Duration(seconds: 2),
          ),
        );
        return false; // 禁止立刻退出，等待下一次按鍵
      }
      return true; // 兩次按鍵間隔短，允許退出
    }

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      onWillPop: _onWillPop,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH24,
              DropdownWidget(
                items: ['選項 1', '選項 2', '選項 3'],
                selectedIndex: selectedIndex, // 傳入 ValueNotifier 來追蹤索引
                onChanged: (index) {
                  print('選擇了索引: $index');
                },
              ),
              gapH16,
              InputWidget(
                hintText: AppTexts.plsEnterStudentNumber,
              ),
              Row(
                children: [
                  Checkbox(
                    side:
                        BorderSide(color: AppColors.primaryBlack, width: 2.sp),
                    checkColor: Colors.white,
                    activeColor: AppColors.primaryBlack,
                    value: _isKeepLogin.value,
                    onChanged: (bool? value) {
                      _isKeepLogin.value = value ?? false;
                    },
                  ),
                  customText(
                    AppTexts.keepLoginState,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    onTap: () {
                      _isKeepLogin.value = !_isKeepLogin.value;
                    },
                  ),
                ],
              ),
              gapH24,
              SizedBox(
                  width: double.infinity,
                  child: roundedButton(
                      text: AppTexts.login,
                      bgColor: AppColors.primaryBlack,
                      fontColor: AppColors.white,
                      onTap: () {
                        _login();
                      })),
              gapH32,
              customText(
                AppTexts.registerMember,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: AppColors.blue,
                onTap: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
