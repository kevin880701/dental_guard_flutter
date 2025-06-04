
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../organization/data/models/response/group/group_data.dart';
import '../widgets/chart/group_brushing_bar_chart.dart';
import '../widgets/chart/group_use_count_line_chart.dart';

class GroupBrushingChartScreen extends HookConsumerWidget {
  final GroupData group;

  const GroupBrushingChartScreen({super.key, required this.group});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: Container(height: double.infinity,child: SingleChildScrollView(child:
      Column(
        children: [
          GroupBrushingBarChart(title: '平均牙菌斑百分比', ),
          GroupUseCountLineChart(title: '平均牙菌斑百分比', ),
          SizedBox(height: 96),
        ],
      ),),),
    );
  }
}
