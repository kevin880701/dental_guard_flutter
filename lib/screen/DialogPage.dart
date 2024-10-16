import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/utils/DialogManager.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';

class DialogPage extends HookConsumerWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      return null;
    }, []);

    return BasePage(
      appBar: blackLightAppBar(),
      child: Column(
        children: [
          gapH16,
          Container(
            height: 48.sp,
            child: roundedButton(
              text: 'Click To Show Default Dialog',
              borderColor: AppColors.black,
              onTap: () async {
                await showDefaultDialog(
                  context,
                  title: "Title",
                  content: "Content",
                  firstButton: roundedButton(
                    radius: 12.sp,
                    text: AppTexts.cancel,
                    onTap: () {
                      AutoRouter.of(context).maybePop();
                    },
                    bgColor: AppColors.white,
                    fontColor: AppColors.black,
                    borderColor: AppColors.black,
                  ),
                  secondButton: roundedButton(
                    radius: 12.sp,
                    text: AppTexts.confirm,
                    onTap: () {},
                    bgColor: AppColors.black,
                    fontColor: AppColors.white,
                    borderColor: AppColors.black,
                  ),
                );
              },
            ),
          ),
          gapH16,
          Container(
            height: 48.sp,
            child: roundedButton(
              text: 'Click To Show Bottom Dialog',
              borderColor: AppColors.black,
              onTap: () async {
                await showBottomEditDialog(
                  context,
                  title: "Title",
                  hintText: "HintText",
                  defaultText: "DefaultText",
                  buttonText: "buttonText",
                  onTap: (text) {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
