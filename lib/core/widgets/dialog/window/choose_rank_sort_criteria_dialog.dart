import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../features/teeth_record/domain/entity/rank_sort_criteria.dart';
import '../../../constants/app_resources.dart';
import '../../../utils/app_toast.dart';
import '../../button/app_button.dart';
import '../../input/input_manager.dart';
import '../../input/input_type.dart';
import '../../text/app_text.dart';
import '../../text/text_theme.dart';
import '../widget/dialog_title_bar.dart';

class ChooseRankSortCriteriaDialog extends HookConsumerWidget {
  const ChooseRankSortCriteriaDialog({
    super.key,
    required this.currentRankSortCriteria,
  });

  final RankSortCriteria currentRankSortCriteria;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue = useState<RankSortCriteria>(currentRankSortCriteria);

    final List<(String, RankSortCriteria)> options = [
      (AppStrings.averagePlaquePercentage, RankSortCriteria.plaquePercent),
      (AppStrings.averageNumberOfUsers, RankSortCriteria.recordCount),
    ];

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DialogTitleBar(title: AppStrings.selectRanking,),
            const Divider(color: AppColors.borderGrey),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: options.map((option) {
                    final String title = option.$1;
                    final RankSortCriteria value = option.$2;

                    return RadioListTile<RankSortCriteria>(
                      title: AppText(text: title),
                      value: value,
                      groupValue: selectedValue.value,
                      activeColor: AppColors.chartPurple, // 使用主題色
                      onChanged: (RankSortCriteria? newValue) {
                        if (newValue != null) {
                          selectedValue.value = newValue;
                          Navigator.of(context).pop(newValue);
                        }
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

