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
      appBar: blackLightAppBar(),
      onWillPop: _onWillPop,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h2Text(AppTexts.login),
              gapH24,
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              gapH16,
              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible.value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(isPasswordVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      isPasswordVisible.value = !isPasswordVisible.value;
                    },
                  ),
                ),
              ),
              gapH24,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _login,
                  child: Text(AppTexts.login),
                ),
              ),
              gapH32,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleAssetsImage(
                      filename: AppImages.googleIcon,
                      width: 24.sp,
                      bgColor: AppColors.white,
                      onTap: () {
                        showToast(context: context, text: 'Google 登入');
                      }),
                  gapW16,
                  circleAssetsImage(
                      filename: AppImages.appleIcon,
                      width: 24.sp,
                      bgColor: AppColors.white,
                      onTap: () {
                        showToast(context: context, text: 'Apple 登入');
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
