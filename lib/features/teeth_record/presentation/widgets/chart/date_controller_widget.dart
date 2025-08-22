import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/widgets/image/app_icon.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/utils/dialog_manager.dart';
import '../../../domain/entity/chart_time_status.dart';

class DateControllerWidget extends StatelessWidget {
  final DateTime selectTime;
  final ChartTimeStatus currentTimeStatus;
  final void Function(DateTime, ChartTimeStatus?) onDateChange;
  final VoidCallback? onReportTap;

  const DateControllerWidget({
    super.key,
    required this.selectTime,
    required this.currentTimeStatus,
    required this.onDateChange,
    this.onReportTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () async {
                await showPickerDateDialog(
                  context,
                  selectTime: selectTime,
                  chartTimeStatus: currentTimeStatus,
                  onSelectTime: (date, status) {
                    onDateChange(date ?? selectTime, status);
                  },
                );
              },
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.borderGrey, width: 1),
                ),
                child: Row(
                  children: [
                    AppIcon(
                      icon: AppImages.dateIcon,
                      padding: 0,
                      size: 20,
                      color: AppColors.grey,
                    ),
                    SizedBox(width: 8),
                    AppText(
                      text: formatDateByStatus(selectTime, currentTimeStatus),
                      textStyle: bodyMedium,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),)
          ,
          SizedBox(
            width: 8,
          ),
          AppIcon(
            icon: AppImages.reportIcon,
            backgroundColor: Colors.white,
            color: AppColors.grey,
            padding: 8,
            size: 24,
            borderColor: AppColors.borderGrey,
            borderWidth: 1,
            borderRadius: 8,
            onTap: onReportTap,
          ),
          SizedBox(
            width: 8,
          ),
          AppIcon(
            icon: AppImages.arrowLeftIcon,
            backgroundColor: Colors.white,
            color: AppColors.grey,
            padding: 8,
            size: 24,
            borderColor: AppColors.borderGrey,
            borderWidth: 1,
            borderRadius: 8,
            onTap: () {
              DateTime newDate;
              switch (currentTimeStatus) {
                case ChartTimeStatus.hour:
                  newDate = selectTime.subtract(Duration(days: 1));
                  break;
                case ChartTimeStatus.day:
                  newDate = addMonths(selectTime, -1);
                  break;
                case ChartTimeStatus.semester:
                  newDate = navigateSemester(selectTime, -1); // 調用新的學期導航函式
                  break;
                case ChartTimeStatus.month:
                  newDate = addYears(selectTime, -1);
                  break;
                case ChartTimeStatus.minute:
                  newDate = selectTime.subtract(Duration(hours: 1));
                  break;
                case ChartTimeStatus.quarter:
                case ChartTimeStatus.quarterHour:
                  newDate = selectTime.subtract(Duration(hours: 3));
                  break;

              }
              onDateChange(newDate, null);
            },
          ),
          SizedBox(
            width: 8,
          ),
          AppIcon(
            icon: AppImages.arrowRightIcon,
            backgroundColor: Colors.white,
            color: AppColors.grey,
            padding: 8,
            size: 24,
            borderColor: AppColors.borderGrey,
            borderWidth: 1,
            borderRadius: 8,
            onTap: () {
              DateTime newDate;
              switch (currentTimeStatus) {
                case ChartTimeStatus.hour:
                  newDate = selectTime.add(Duration(days: 1));
                  break;
                case ChartTimeStatus.day:
                  newDate = addMonths(selectTime, 1);
                  break;
                case ChartTimeStatus.semester:
                  newDate = navigateSemester(selectTime, 1);
                  break;
                case ChartTimeStatus.month:
                  newDate = addYears(selectTime, 1);
                  break;
                case ChartTimeStatus.minute:
                  newDate = selectTime.add(Duration(hours: 1));
                  break;
                case ChartTimeStatus.quarter:
                case ChartTimeStatus.quarterHour:
                  newDate = selectTime.add(Duration(hours: 3));
                  break;
              }
              onDateChange(newDate, null);
            },
          ),
        ],
      ),
    );
  }
}

// 加減月
DateTime addMonths(DateTime date, int months) {
  int year = date.year + ((date.month - 1 + months) ~/ 12);
  int month = ((date.month - 1 + months) % 12) + 1;
  int day = date.day;

  // 取得新月份最大天數（防止 2月31號這種情形）
  int lastDayOfMonth = DateTime(year, month + 1, 0).day;
  if (day > lastDayOfMonth) day = lastDayOfMonth;

  return DateTime(year, month, day);
}

// 加減年
DateTime addYears(DateTime date, int years) {
  int year = date.year + years;
  int month = date.month;
  int day = date.day;

  // 取得新月份最大天數（防止閏年等情形）
  int lastDayOfMonth = DateTime(year, month + 1, 0).day;
  if (day > lastDayOfMonth) day = lastDayOfMonth;

  return DateTime(year, month, day);
}

DateTime navigateSemester(DateTime selectTime, int direction) {
  int currentYear = selectTime.year;
  int currentMonth = selectTime.month;

  // 判斷當前 selectTime 所在的學期
  // 如果是 8月-1月，是上學期 (semester = 1)
  // 如果是 2月-7月，是下學期 (semester = 2)
  int currentSemester;
  if (currentMonth >= 8 || currentMonth <= 1) {
    currentSemester = 1; // 上學期
  } else {
    currentSemester = 2; // 下學期
  }

  if (direction == 1) {
    // 往後一個學期
    if (currentSemester == 1) {
      // 當前是上學期 (8月-1月)，下一學期是同年的下學期 (從2月開始)
      return DateTime(currentYear, 2, 1);
    } else {
      // 當前是下學期 (2月-7月)，下一學期是下一個學年的上學期 (從次年8月開始)
      return DateTime(currentYear + 1, 8, 1);
    }
  } else {
    // 往前一個學期 (direction == -1)
    if (currentSemester == 1) {
      // 當前是上學期 (8月-1月)，上一學期是前一個學年的下學期 (從前一年2月開始)
      return DateTime(currentYear - 1, 2, 1);
    } else {
      // 當前是下學期 (2月-7月)，上一學期是同年的上學期 (從同一年8月開始)
      return DateTime(currentYear, 8, 1);
    }
  }
}

String formatDateByStatus(DateTime date, ChartTimeStatus status) {
  switch (status) {
    case ChartTimeStatus.hour:
      return DateFormat('yyyy-MM-dd').format(date);
    case ChartTimeStatus.day:
      return DateFormat('yyyy-MM').format(date);
    case ChartTimeStatus.month:
      return DateFormat('yyyy').format(date);
    case ChartTimeStatus.minute:
      return DateFormat('yyyy-MM-dd HH:00').format(date);
    case ChartTimeStatus.semester:
    // 計算民國年
      int taiwanYear = date.year - 1911;
      String semesterText;
      if (date.month >= 8 || date.month <= 1) {
        // 8月到次年1月為上學期
        // 如果當前日期是1月，但它實際上代表的是前一學年的上學期
        if (date.month <= 1) {
          semesterText = '${taiwanYear - 1}上學期';
        } else {
          semesterText = '$taiwanYear上學期';
        }
      } else {
        // 2月到7月為下學期
        semesterText = '$taiwanYear下學期';
      }
      return semesterText;
    case ChartTimeStatus.quarter:
    case ChartTimeStatus.quarterHour:
      return '';

  }
}