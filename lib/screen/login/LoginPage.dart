import 'package:dental_guard_flutter/provider/UserProvider.dart';
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
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final userNotifier = ref.read(userProvider.notifier);
    final accountController = useTextEditingController();
    final passwordController = useTextEditingController();
    final lastBackPressed = useState<DateTime?>(null);
    final _isKeepLogin = useState<bool>(false);
    final _isClickable = useState(false);
    
    void _login() async {
      ref.showLoading(cancellable: true);
      userNotifier.login(username: accountController.text, password: passwordController.text).then((response) async {
        if(response != null){
          if(_isKeepLogin.value){
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('keepLogin', true);
            await prefs.setString('account', accountController.text);
            await prefs.setString('password', passwordController.text);
          }
          AutoRouter.of(context).push(const MainRoute());
        }
        ref.hideLoading();
      });
      // Future.delayed(Duration(seconds: 2), () {
      //   final isCancelled = ref.read(pageProvider).isCancelled;
      //
      //   if (!isCancelled) {
      //     ref.hideLoading();
      //     AutoRouter.of(context).push(const MainRoute());
      //   }
      // });
    }

    useEffect(() {

      WidgetsBinding.instance.addPostFrameCallback((_) async {

        final prefs = await SharedPreferences.getInstance();
        final keepLogin = prefs.getBool('keepLogin') ?? false;

        if (keepLogin) {
          _isKeepLogin.value = true;
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

      return () {
      };
    }, []);

    useEffect(() {
      void updateIsClickable() {
        _isClickable.value = accountController.text.isNotEmpty && passwordController.text.isNotEmpty;
      }

      accountController.addListener(updateIsClickable);
      passwordController.addListener(updateIsClickable);

      updateIsClickable();

      return () {
        accountController.removeListener(updateIsClickable);
        passwordController.removeListener(updateIsClickable);
      };
    }, [accountController.text, passwordController.text]);

    Future<bool> _onWillPop() async {
      final now = DateTime.now();
      if (lastBackPressed.value == null || now.difference(lastBackPressed.value!) > Duration(seconds: 2)) {
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
              InputWidget(
                fieldName: AppTexts.accountField,
                hintText: AppTexts.account,
                controller: accountController,
              ),
              gapH16,
              InputWidget(
                fieldName: AppTexts.passwordField,
                hintText: AppTexts.password,
                controller: passwordController,
              ),
              Row(
                children: [
                  Checkbox(
                    side: BorderSide(color: AppColors.primaryBlack, width: 2.sp),
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
                      bgColor: (_isClickable.value)?AppColors.primaryBlack:AppColors.disableGrey,
                      fontColor: AppColors.white,
                      onTap: (_isClickable.value)?() {
                        _login();
                      }:null)),
              // gapH32,
              // customText(
              //   AppTexts.registerMember,
              //   fontWeight: FontWeight.w400,
              //   fontSize: 16.sp,
              //   color: AppColors.blue,
              //   onTap: () {
              //     AutoRouter.of(context).push(const SetAccountRoute());
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
