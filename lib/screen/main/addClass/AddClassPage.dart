import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/data/Params.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:dental_guard_flutter/screen/main/addClass/AddClassProvider.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/DropdownWidget.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class AddClassPage extends HookConsumerWidget {
  const AddClassPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addClassState = ref.watch(addClassProvider);
    final addClassNotifier = ref.read(addClassProvider.notifier);

    final _selectedGradeIndex = useState<int?>(null);
    final classNameController = useTextEditingController();

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        addClassNotifier.getTeacherInfo();
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
              title: AppTexts.addClass,
              isBack: true,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      DropdownWidget(
                        fieldName: '年級',
                        items: gradeMap.values.toList(),
                        selectedIndex: _selectedGradeIndex,
                        hintText: '請選擇年級',
                        onChanged: (int? index) {
                          if (index != null) {
                            _selectedGradeIndex.value = index;
                            final selectedGrade =
                            gradeMap.keys.elementAt(index);
                            print('選擇的年級: $selectedGrade => ${gradeMap[selectedGrade]}');
                          }
                        },
                      ),
                      gapH16,
                      InputWidget(
                        fieldName: '班級名稱',
                        hintText: '請輸入班級名稱',
                        controller: classNameController,
                      ),
                      gapH32,
                  roundedButton(
                    text: AppTexts.confirm,
                    bgColor: AppColors.primaryBlack,
                    fontColor: AppColors.white,
                    onTap: () async {
                      final selectedGrade = _selectedGradeIndex.value != null
                          ? gradeMap.values.elementAt(_selectedGradeIndex.value!)
                          : null;
                      final className = classNameController.text.trim();

                      if (selectedGrade == null) {
                        ref.read(pageProvider.notifier).showError("請選擇年級");
                        return;
                      }

                      if (className.isEmpty) {
                        ref.read(pageProvider.notifier).showError("請輸入班級名稱");
                        return;
                      }

                      // 呼叫新增班級 API，grade 為中文
                      await addClassNotifier
                          .addClass(
                        grade: selectedGrade, // ← 已改為中文名稱
                        className: className,
                      )
                          .then((_) {
                        AutoRouter.of(context).popForced();
                      });
                    },
                  ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
