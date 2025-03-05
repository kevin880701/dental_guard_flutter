import 'package:dental_guard_flutter/screen/main/addStudent/AddStudentProvider.dart';
import 'package:dental_guard_flutter/utils/utils.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/DropdownWidget.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
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
  const AddStudentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addStudentState = ref.watch(addStudentProvider);
    final addStudentNotifier = ref.read(addStudentProvider.notifier);

    final _isClickable = useState(true);

    final ValueNotifier<int?> _selectedIndex = ValueNotifier<int?>(null);
    final ValueNotifier<int> _selectedGenderIndex = ValueNotifier<int>(0);
    final fullnameController = useTextEditingController();
    final studentIdController = useTextEditingController();
    final classNames = useState<List<String>>([]);
    final genderList = useState<List<String>>(['男', '女']);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await addStudentNotifier.getClassroomList().then((classroomList) {
          classNames.value = classroomList.map((classroom) {
            print('${classroom.className}');
            return classroom.className;
          }).toList();
          print('${classNames.value.length}');
        });
      });
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainTitleBar(
              title: AppTexts.addStudent,
              isBack: true,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Column(
                  children: [
                    InputWidget(
                      fieldName: '名稱',
                      hintText: AppTexts.account,
                      controller: fullnameController,
                    ),
                    gapH16,
                    InputWidget(
                      fieldName: '學號',
                      hintText: AppTexts.password,
                      controller: studentIdController,
                    ),
                    gapH16,
                    DropdownWidget(
                      fieldName: '班級',
                      items: classNames.value,
                      // 傳入選項列表
                      selectedIndex: _selectedIndex,
                      // 傳入選中索引的 ValueNotifier
                      hintText: 'Please select',
                      // 提示文字
                      onChanged: (int? index) {
                        // 當選項改變時，執行此處的邏輯
                        if (index != null) {
                          print(
                              'Selected index: $index, value: ${classNames.value[index]}');
                        }
                      },
                    ),
                    gapH16,
                    DropdownWidget(
                      fieldName: '性別',
                      items: genderList.value,
                      // 傳入選項列表
                      selectedIndex: _selectedGenderIndex,
                      // 傳入選中索引的 ValueNotifier
                      hintText: 'Please select',
                      // 提示文字
                      onChanged: (int? index) {
                        // 當選項改變時，執行此處的邏輯
                        if (index != null) {
                          print(
                              'Selected index: $index, value: ${classNames.value[index]}');
                        }
                      },
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    roundedButton(
                        text: AppTexts.confirm,
                        bgColor: _isClickable.value
                            ? AppColors.primaryBlack
                            : AppColors.disableGrey,
                        fontColor: AppColors.white,
                        onTap: _isClickable.value
                            ? () {
                                addStudentNotifier
                                    .addStudent(
                                        username: generateRandomString(),
                                        fullName: fullnameController.text,
                                        password: "password",
                                        email: "test@mail.com",
                                        lineId: "lineId",
                                        studentId: studentIdController.text,
                                        school: 1,
                                        classroom: addStudentState
                                            .classroomList[
                                                _selectedIndex.value!]
                                            .id,
                                        birth: '1999-01-01',
                                        gender: genderList
                                            .value[_selectedGenderIndex.value])
                                    .then((_) {
                                  AutoRouter.of(context).popForced();
                                });
                              }
                            : null),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
