import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';

class DropdownWidget extends StatelessWidget {
  final List<String> items; // 選項列表
  final String? hintText; // 提示文字
  final Function(int?)? onChanged; // 當選擇改變時觸發的回調，回傳 index
  final ValueNotifier<int?> selectedIndex; // 使用 ValueNotifier 來追蹤選中索引

  const DropdownWidget({
    Key? key,
    required this.items,
    this.hintText = '請選擇', // 預設提示文字
    required this.selectedIndex, // 這裡需要傳入 ValueNotifier
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int?>(
      valueListenable: selectedIndex, // 監聽 selectedIndex 的變化
      builder: (context, value, _) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderGrey,
              width: 2,
            ),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24.sp),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<int>(
              isExpanded: true,
              value: value, // 設定選中的索引，監聽器的 value
              hint: Text(
                hintText!,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.hintGrey, // 默認顯示提示文字的顏色
                  fontWeight: FontWeight.w400,
                ),
              ),
              items: List.generate(items.length, (index) {
                return DropdownMenuItem<int>(
                  value: index,
                  child: Text(
                    items[index], // 顯示對應的選項文字
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.primaryBlack, // 已選中的文字顏色
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }),
              onChanged: (int? newIndex) {
                selectedIndex.value = newIndex; // 更新選中的索引
                if (onChanged != null) {
                  onChanged!(newIndex); // 回調傳回新的索引
                }
              },
              buttonStyleData: ButtonStyleData(
                height: 40.h, // 設置下拉按鈕高度
                width: 140.w, // 設置下拉按鈕寬度
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200.h, // 設置下拉列表的最大高度
                width: 180.w, // 下拉菜單寬度
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white, // 下拉菜單背景
                ),
              ),
              iconStyleData: const IconStyleData(
                iconSize: 24, // 圖標大小
                iconEnabledColor: Colors.grey, // 默認圖標顏色
              ),
            ),
          ),
        );
      },
    );
  }
}
