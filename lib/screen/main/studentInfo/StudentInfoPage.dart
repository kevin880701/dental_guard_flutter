import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
import 'package:dental_guard_flutter/widgets/item/BrushingRecordItem.dart';
import 'package:dental_guard_flutter/widgets/item/StudentItem.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';

@RoutePage()
class StudentInfoPage extends HookConsumerWidget {
  const StudentInfoPage({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(
                title: AppTexts.studentInfo,
                isBack: true,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: StudentItem(student: student),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    assetImage(AppImages.listIcon,
                        width: 24, height: 24, color: AppColors.primaryBlack),
                    h2Text(AppTexts.toothBrushingRecord),
                    Spacer(),
                    roundedButton(
                      text: AppTexts.addRecordPlus,
                      fontColor: AppColors.white,
                      bgColor: AppColors.primaryBlack,
                      onTap: () {
                        AutoRouter.of(context).push(ImageDetectRoute());
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: brushingRecords.length, // 記錄的總數
                  itemBuilder: (context, index) {
                    final record = brushingRecords[index];
                    return BrushingRecordItem(
                      brushingRecord: record,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
