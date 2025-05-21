import 'package:flutter/material.dart';

import 'bottom_navigation_icon_set.dart';
import 'bottom_navigation_item.dart';
import 'bottom_navigation_label_set.dart';

/// 自訂底部導覽列元件 BottomNavigationBarWidget
///
/// 使用者可自定義 icon、label 樣式，並透過 currentIndex 判斷選中項目。
///
/// 通常搭配 `BottomNavigationItem` 一起使用，用於 App 的主要導覽切換。
///
/// ---
///
/// 使用範例：
/// ```
/// BottomNavigationBarWidget(
///   currentIndex: currentIndex,
///   onTabSelected: (index) => setState(() => currentIndex = index),
///   iconSets: [
///     BottomNavigationIconSet(
///       icon: Icons.home_outlined,
///       selectedIcon: Icons.home,
///     ),
///     BottomNavigationIconSet(
///       icon: Icons.search_outlined,
///       selectedIcon: Icons.search,
///     ),
///   ],
///   labelSets: [
///     BottomNavigationLabelSet(label: '首頁'),
///     BottomNavigationLabelSet(label: '搜尋'),
///   ],
/// )
/// ```
class BottomNavigationBarWidget extends StatelessWidget {
  /// 當前選中的 tab index
  final int currentIndex;

  /// 點擊 tab 後觸發的 callback
  final Function(int index) onTabSelected;

  /// 對應各 tab 的 iconSet（包含 icon / selectedIcon）
  final List<BottomNavigationIconSet> iconSets;

  /// 對應各 tab 的 labelSet（包含 label 樣式）
  final List<BottomNavigationLabelSet> labelSets;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
    required this.iconSets,
    required this.labelSets,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(iconSets.length, (index) {
        return BottomNavigationItem(
          iconSet: iconSets[index],
          labelSet: labelSets[index],
          isSelected: currentIndex == index,
          onTap: () => onTabSelected(index),
        );
      }),
    );
  }
}
