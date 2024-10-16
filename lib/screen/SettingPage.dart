import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/provider/VersionInfoProvider.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:dental_guard_flutter/utils/ToastHelper.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final versionInfo = ref.watch(versionInfoProvider);
    final clickCount = useState(0); // 用來計算點擊次數
    final timer = useState<Timer?>(null); // 用來重置計時器

    useEffect(() {
      return null;
    }, []);

    return BasePage(
      appBar: blackLightAppBar(),
      child: GestureDetector(
        onTap: () {
          clickCount.value++;

          // 當達到五次點擊時，顯示 Toast
          if (clickCount.value == 5) {
            showToast(context: context, text: versionInfo.debugVersion);
            clickCount.value = 0; // 重置點擊計數
          }

          // 開啟或重置 2 秒的計時器，超過 2 秒後自動將點擊次數重置
          timer.value?.cancel(); // 如果有之前的計時器，先取消
          timer.value = Timer(const Duration(seconds: 2), () {
            clickCount.value = 0; // 超過 2 秒未達到 5 次，重置計數
          });
        },
        child: Container(
          child: Center(
            child: customText(
              'ver ${(kReleaseMode) ? versionInfo.releaseVersion : versionInfo.debugVersion}',
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
