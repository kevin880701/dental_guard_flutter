import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/providers/page_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/providers/loading_provider.dart';
import '../../../../core/providers/version_info_provider.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/button/app_button.dart';
import '../../../../core/widgets/input/input_type.dart';
import '../../../../core/widgets/text/app_text.dart';
import '../../../../routes/app_router.dart';
import '../../../auth/application/auth_controller.dart';
import '../widgets/app_input.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authControllerNotifier = ref.read(authControllerProvider.notifier);
    final authControllerState = ref.watch(authControllerProvider);
    final accountController = useTextEditingController();
    final passwordController = useTextEditingController();
    final lastBackPressed = useState<DateTime?>(null);
    final isKeepLogin = useState<bool>(false);
    final isClickable = useState(false);
    final isFormValid = useState(false);

    void validateForm() {
      final account = accountController.text;
      final password = passwordController.text;

      final isValid = account.isNotEmpty && password.isNotEmpty;

      isFormValid.value = isValid;
    }

    void login() async {
      ref.read(loadingNotifierProvider.notifier).showLoading();
      final response = await authControllerNotifier.login(
        account: accountController.text,
        password: passwordController.text,
      );

      if (response.resultCode == 0) {
        _onLoginSuccess(
          ref,
          context,
          isKeepLogin.value,
          accountController.text,
          passwordController.text,
        );
      } else {
        AppToast.showToast(message: AppStrings.loginFailed);
        ref
            .read(pageNotifierProvider.notifier)
            .showToastMessage(message: response.message);
      }
      ref.read(loadingNotifierProvider.notifier).hideLoading();
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        final prefs = await SharedPreferences.getInstance();
        final keepLogin = prefs.getBool('keepLogin') ?? false;

        if (keepLogin) {
          isKeepLogin.value = true;
          final savedAccount = prefs.getString('account');
          final savedPassword = prefs.getString('password');

          if (savedAccount != null) {
            accountController.text = savedAccount;
          }
          if (savedPassword != null) {
            passwordController.text = savedPassword;
          }
        }
      });

      return () {};
    }, []);

    useEffect(() {
      void updateIsClickable() {
        isClickable.value = accountController.text.isNotEmpty &&
            passwordController.text.isNotEmpty;
      }

      accountController.addListener(updateIsClickable);
      passwordController.addListener(updateIsClickable);

      updateIsClickable();

      return () {
        accountController.removeListener(updateIsClickable);
        passwordController.removeListener(updateIsClickable);
      };
    }, [accountController.text, passwordController.text]);

    Future<bool> onWillPop() async {
      final now = DateTime.now();
      if (lastBackPressed.value == null ||
          now.difference(lastBackPressed.value!) > Duration(seconds: 2)) {
        lastBackPressed.value = now;
        ref.read(pageNotifierProvider.notifier)
            .showToastMessage(
            message: AppStrings.pressAgainExit);
        return false; // 禁止立刻退出，等待下一次按鍵
      }
      exitApp();
      return true; // 兩次按鍵間隔短，允許退出
    }

    return BasePage(
      backgroundColor: AppColors.bgColor,
      onWillPop: onWillPop,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH24,
              AppInput(
                title: AppStrings.account,
                hintText: AppStrings.plsEnterAccount,
                inputType: InputType.ALL,
                controller: accountController,
                onChanged: (_) => validateForm(),
                validator: (text) {
                  // if (text.length < 6 || text.length > 20) {
                  //   return AppStrings.passwordLengthHint;
                  // }
                  return null;
                },
              ),
              AppInput(
                title: AppStrings.password,
                hintText: AppStrings.plsEnterPassword,
                inputType: InputType.PASSWORD,
                controller: passwordController,
                onChanged: (_) => validateForm(),
                validator: (text) {
                  // if (text.length < 6 || text.length > 20) {
                  //   return AppStrings.passwordLengthHint;
                  // }
                  return null;
                },
              ),
              Row(
                children: [
                  Checkbox(
                    side: BorderSide(color: AppColors.primaryBlack, width: 2),
                    checkColor: Colors.white,
                    activeColor: AppColors.primaryBlack,
                    value: isKeepLogin.value,
                    onChanged: (bool? value) {
                      isKeepLogin.value = value ?? false;
                    },
                  ),
                  AppText(
                    text: AppStrings.keepLoginState,
                    textStyle: bodyMedium,
                    onTap: () {
                      isKeepLogin.value = !isKeepLogin.value;
                    },
                  ),
                ],
              ),
              gapH24,
              SizedBox(
                  width: double.infinity,
                  child: AppButton(
                      text: AppStrings.login,
                      backgroundColor: (isClickable.value)
                          ? AppColors.primaryBlack
                          : AppColors.disableGrey,
                      fontColor: AppColors.white,
                      onPressed: (isClickable.value)
                          ? () {
                              login();
                            }
                          : null)),
              Spacer(),
              // Container(
              //   margin: EdgeInsets.only(bottom: 24),
              //   child: Row(
              //     children: [
              //       Expanded(child: Container(height: 1, color: Colors.black)),
              //       Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 8),
              //         child: AppIcon(
              //           icon: AppImages.lineIcon,
              //           size: 24,
              //           backgroundColor: Colors.white,
              //           padding: 4,
              //           onTap: () async {
              //             final response = await ref.read(authControllerProvider.notifier).oAuthLogin(OAuthProviderType.line);
              //
              //             if (response.resultCode == 0) {
              //               _onLoginSuccess(ref, context, false, null, null);
              //             } else {
              //               AppToast.showToast(message: response.message);
              //             }
              //           }
              //           ,
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 8),
              //         child: AppIcon(
              //           icon: AppImages.googleIcon,
              //           size: 24,
              //           backgroundColor: Colors.white,
              //           padding: 4,
              //           onTap: () async {
              //
              //             ref.read(pageNotifierProvider.notifier).showLoading();
              //
              //             final response = await authControllerNotifier.oAuthLogin(OAuthProviderType.google);
              //
              //             if (response.resultCode == 0) {
              //               // google login 不會自動記住帳密，所以 isKeepLogin/帳密可以不用存
              //               _onLoginSuccess(ref, context, false, null, null);
              //             } else {
              //               AppToast.showToast(message: response.message);
              //             }
              //             ref.read(pageNotifierProvider.notifier).hideLoading();
              //           },
              //         ),
              //       ),
              //       Expanded(child: Container(height: 1, color: Colors.black)),
              //     ],
              //   ),
              // ),
              AppText(text: ref.watch(versionInfoProvider).releaseVersion)
            ],
          ),
        ),
      ),
    );
  }
}

void _onLoginSuccess(WidgetRef ref, BuildContext context, bool isKeepLogin, String? account, String? password) async {
  final authState = ref.read(authControllerProvider);
  final userData = authState.userInfoData;
  final hasName = userData != null &&
      userData.name != null &&
      userData.name!.trim().isNotEmpty;

  if (isKeepLogin && account != null && password != null) {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('keepLogin', true);
    await prefs.setString('account', account);
    await prefs.setString('password', password);
  }

  if (hasName) {
    context.router.replaceAll([const MainRoute()]);
  } else {
    context.router.replaceAll([const CreateUserProfileRoute()]);
  }
}
