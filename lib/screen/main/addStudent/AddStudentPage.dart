import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/screen/main/addStudent/AddStudentProvider.dart';
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart';
import 'package:dental_guard_flutter/utils/ToastHelper.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
import 'package:dental_guard_flutter/widgets/item/BrushingRecordItem.dart';
import 'package:dental_guard_flutter/widgets/item/StudentItem.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';

@RoutePage()
class AddStudentPage extends HookConsumerWidget {
  const AddStudentPage({super.key, required this.classRoomId});

  final int classRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _isClickable = useState(true);

    final addStudentNotifier = ref.read(addStudentProvider.notifier);
    final usernameController = useTextEditingController();
    final studentIdController = useTextEditingController();

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainTitleBar(title: AppTexts.addStudent,isBack: true,),
            Expanded(
                child: Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Column(
                children: [
                  InputWidget(
                    fieldName: '名稱',
                    hintText: AppTexts.account,
                    controller: usernameController,
                  ),
                  gapH16,
                  InputWidget(
                    fieldName: '學號',
                    hintText: AppTexts.password,
                    controller: studentIdController,
                  ),
                  Spacer(),
                  roundedButton(
                      text: AppTexts.confirm,
                      bgColor: _isClickable.value
                          ? AppColors.primaryBlack
                          : AppColors.disableGrey,
                      fontColor: AppColors.white,
                      onTap: _isClickable.value
                          ? () {
                              addStudentNotifier.addStudent(
                                  username: usernameController.text,
                                  fullName: "fullName",
                                  password: "password",
                                  email: "test@mail.com",
                                  lineId: "lineId",
                                  studentId: studentIdController.text,
                                  school: 1,
                                  classroom: classRoomId,
                                  birth: '1999-01-01',
                                  gender: 'M').then((_) {
                                AutoRouter.of(context).popForced();
                              });
                            }
                          : null),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
