import 'package:dental_guard_flutter/core/constants/app_images.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';

import '../../../../features/teeth_record/domain/entity/chart_time_status.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../../utils/utils.dart';
import '../../datePicker/library/date_picker.dart';
import '../../datePicker/library/date_picker_manager.dart';
import '../../image/app_icon.dart';
import '../../text/app_text.dart';
import '../widget/dialog_title_bar.dart';

class PickerDateDialog extends StatefulWidget {
  const PickerDateDialog({
    super.key,
    required this.selectTime,
    required this.chartTimeStatus,
    required this.onSelectTime,
  });

  final DateTime? selectTime;
  final ChartTimeStatus chartTimeStatus;
  final Function(DateTime?, ChartTimeStatus?) onSelectTime;

  @override
  State<PickerDateDialog> createState() => _PickerDateDialogState();
}

class _PickerDateDialogState extends State<PickerDateDialog> {
  final List<String> dateOptions = ["日", "月", "年"];
  final List<String> monthList = [
    '1月',
    '2月',
    '3月',
    '4月',
    '5月',
    '6月',
    '7月',
    '8月',
    '9月',
    '10月',
    '11月',
    '12月'
  ];
  final Map<String, int> monthMap = {
    '1月': 1,
    '2月': 2,
    '3月': 3,
    '4月': 4,
    '5月': 5,
    '6月': 6,
    '7月': 7,
    '8月': 8,
    '9月': 9,
    '10月': 10,
    '11月': 11,
    '12月': 12,
  };
  late int dateSwitcherIndex; // 0: 日, 1: 月, 2: 年

  late DateTime selectedTime;
  late ChartTimeStatus chartTimeStatus;

  late List<String> yearList;
  late int yearSelectorIndex;
  late int currentYearSelectorIndex;

  late int monthSelectorIndex;
  late int viewMonthSelectorYear;

  final DateRangePickerController _controller = DateRangePickerController();

  @override
  void initState() {
    selectedTime = widget.selectTime ?? DateTime.now();
    chartTimeStatus = widget.chartTimeStatus;
    dateSwitcherIndex = getDateSwitcherIndex(chartTimeStatus);

    // 建立 yearList
    int currentYear = DateTime.now().year;
    yearList = List.generate(11, (i) => (currentYear - 10 + i).toString());
    yearSelectorIndex = yearList.indexOf(selectedTime.year.toString());
    currentYearSelectorIndex = yearList.length - 1;

    // 設定月份預設值
    monthSelectorIndex = selectedTime.month - 1;
    viewMonthSelectorYear = selectedTime.year;

    _controller.selectedDate = selectedTime;

    super.initState();
  }

  void _updateTime(DateTime time, ChartTimeStatus status) {
    setState(() {
      selectedTime = time;
      chartTimeStatus = status;
      dateSwitcherIndex = status.index;
    });
    widget.onSelectTime(selectedTime, chartTimeStatus);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 8,
            ),
            DialogTitleBar(title: AppStrings.chooseTime),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  dateSwitcherWidget(),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Visibility(
                        visible: dateSwitcherIndex == 0,
                        maintainState: false,
                        child: daySelectorWidget(),
                      ),
                      Visibility(
                        visible: dateSwitcherIndex == 1,
                        maintainState: false,
                        child: monthSelectorWidget(),
                      ),
                      Visibility(
                        visible: dateSwitcherIndex == 2,
                        maintainState: false,
                        child: yearSelectorWidget(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dateSwitcherWidget() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.borderGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: List.generate(dateOptions.length, (index) {
          final text = dateOptions[index];
          final isSelected = dateSwitcherIndex == index;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  dateSwitcherIndex = index;
                  chartTimeStatus = ChartTimeStatus.values[index];
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: AppText(
                  text: text,
                  textStyle: bodyMedium,
                  color: isSelected ? AppColors.primaryBlack : AppColors.grey,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget daySelectorWidget() {
    _controller.displayDate = selectedTime;
    return SfDateRangePicker(
      showNavigationArrow: false,
      showTodayButton: true,
      todayHighlightColor: AppColors.blue,
      controller: _controller,
      selectionShape: DateRangePickerSelectionShape.rectangle,
      selectionColor: AppColors.blue,
      monthFormat: 'MM',
      onSelectionChanged: (details) {
        final DateTime time = details.value;
        _updateTime(time, ChartTimeStatus.hour);
      },
      headerStyle: DateRangePickerHeaderStyle(
        textAlign: TextAlign.center,
        textStyle: titleLarge,
      ),
      monthCellStyle: DateRangePickerMonthCellStyle(
        textStyle: labelSmall,
        disabledDatesTextStyle:
            labelSmall.copyWith(color: AppColors.disableGrey),
        todayTextStyle: labelSmall.copyWith(color: AppColors.blue),
        todayCellDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.milkBlue,
          shape: BoxShape.rectangle,
        ),
        leadingDatesTextStyle: labelSmall.copyWith(color: AppColors.lightGrey),
        // 顯示在同個月曆但是下個月的日期
        trailingDatesTextStyle: labelSmall.copyWith(color: AppColors.grey),
      ),
      monthViewSettings: const DateRangePickerMonthViewSettings(
          showTrailingAndLeadingDates: true, enableSwipeSelection: false),
    );
  }

  Widget monthSelectorWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (viewMonthSelectorYear > int.parse(yearList.first)) {
                    viewMonthSelectorYear--;
                  }
                });
              },
              child: AppIcon(
                icon: AppImages.arrowLeftIcon,
                size: 24,
                color: viewMonthSelectorYear == int.parse(yearList.first)
                    ? AppColors.grey
                    : AppColors.blue,
              ),
            ),
            const SizedBox(width: 4),
            AppText(
              text: "${viewMonthSelectorYear.toString().padLeft(4, '0')}",
              textStyle: titleMedium,
              color: AppColors.primaryBlack,
            ),
            const SizedBox(width: 4),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (viewMonthSelectorYear < int.parse(yearList.last)) {
                    viewMonthSelectorYear++;
                  }
                });
              },
              child: AppIcon(
                icon: AppImages.arrowRightIcon,
                size: 28,
                color: viewMonthSelectorYear < int.parse(yearList.last)
                    ? AppColors.blue
                    : AppColors.grey,
              ),
            ),
          ],
        ),
        GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 2 / 1,
          padding: EdgeInsets.all(0),
          physics: NeverScrollableScrollPhysics(),
          // 不滾動
          shrinkWrap: true,
          // 讓高度自適應
          children: List.generate(monthList.length, (index) {
            final isSelected = (monthSelectorIndex == index) &&
                (viewMonthSelectorYear == selectedTime.year);
            final isCurrentMonth =
                viewMonthSelectorYear == DateTime.now().year &&
                    selectedTime.month == index + 1;

            return GestureDetector(
              onTap: () {
                final selectedMonth = index + 1;
                final time = DateTime(viewMonthSelectorYear, selectedMonth, 1);
                _updateTime(time, ChartTimeStatus.day);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: isSelected
                      ? AppColors.blue
                      : isCurrentMonth
                          ? AppColors.milkBlue
                          : AppColors.transparent,
                ),
                alignment: Alignment.center,
                child: AppText(
                  text: monthList[index],
                  textStyle: isSelected ? bodyMedium : labelSmall,
                  color: isSelected
                      ? AppColors.white
                      : isCurrentMonth
                          ? AppColors.blue
                          : AppColors.primaryBlack,
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            setState(() {
              viewMonthSelectorYear = DateTime.now().year;
              monthSelectorIndex = DateTime.now().month - 1;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIcon(
                  icon: AppImages.dateIcon, size: 24, color: AppColors.blue),
              const SizedBox(width: 4),
              AppText(
                  text: AppStrings.returnToCurrentTime,
                  textStyle: bodyMedium,
                  color: AppColors.blue)
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget yearSelectorWidget() {
    ScrollController _scrollController = ScrollController();

    void scrollToSelectedYear() {
      if (_scrollController.hasClients) {
        final double itemWidth = MediaQuery.of(context).size.width / 5;
        final double offset = (yearSelectorIndex != -1)
            ? (yearSelectorIndex * itemWidth) - (itemWidth * 2)
            : ((yearList.length - 1) * itemWidth) - (itemWidth * 2);
        _scrollController.animateTo(
          offset,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToSelectedYear();
    });

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          height: 36,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: yearList.length,
            controller: _scrollController,
            itemBuilder: (BuildContext context, int index) {
              bool isSelected = yearSelectorIndex == index;
              bool isCurrentYear = currentYearSelectorIndex == index;
              return GestureDetector(
                onTap: () {
                  final year = int.parse(yearList[index]);
                  final time = DateTime(year, 1, 1);
                  _updateTime(time, ChartTimeStatus.month);
                },
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                    color: isSelected
                        ? AppColors.blue
                        : isCurrentYear
                            ? AppColors.milkBlue
                            : AppColors.white,
                  ),
                  child: AppText(
                    text: yearList[index],
                    textStyle: bodyMedium,
                    color: isSelected
                        ? AppColors.white
                        : isCurrentYear
                            ? AppColors.blue
                            : AppColors.primaryBlack,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 12),
          ),
        ),
        const SizedBox(height: 24),
        GestureDetector(
          onTap: () {
            if (_scrollController.hasClients) {
              final double itemWidth = MediaQuery.of(context).size.width / 5;
              final double offset =
                  ((yearList.length - 1) * itemWidth) - (itemWidth * 2);
              _scrollController.animateTo(
                offset,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIcon(
                  icon: AppImages.dateIcon, size: 24, color: AppColors.blue),
              const SizedBox(width: 4),
              AppText(
                  text: AppStrings.returnToCurrentTime,
                  textStyle: bodyMedium,
                  color: AppColors.blue)
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

int getDateSwitcherIndex(ChartTimeStatus status) {
  switch (status) {
    case ChartTimeStatus.hour:
      return 0;
    case ChartTimeStatus.day:
      return 1;
    case ChartTimeStatus.month:
      return 2;
    default:
      return 0;
  }
}
