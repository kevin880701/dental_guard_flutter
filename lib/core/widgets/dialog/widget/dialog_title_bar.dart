import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../text/app_text.dart';

class DialogTitleBar extends HookWidget {
  final String? title;

  const DialogTitleBar({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return (title != null)
        ? AppText(
            text:title!,
            textStyle: titleMedium,
          )
        : Container(
            height: 4.sp,
            width: 64.sp,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16.sp),
            ),
          );
  }
}
