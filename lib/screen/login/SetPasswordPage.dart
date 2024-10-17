import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class SetPasswordPage extends HookConsumerWidget {
  const SetPasswordPage({super.key, required this.account});
  final String account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customText(AppTexts.registerMember),
              InputWidget(
                hintText: AppTexts.plsEnterYourAccount,
              ),
              roundedButton(text: AppTexts.checkDuplicates),
            ],
          ),
        ),
      ),
    );
  }
}
