import 'package:flutter/material.dart';
import '../image/app_icon.dart';
import 'bottom_navigation_icon_set.dart';
import 'bottom_navigation_label_set.dart';

/// 自訂底部導覽項目元件 BottomNavigationItem
///
/// 搭配 BottomNavigationIconSet 與 BottomNavigationLabelSet 使用，
/// 支援自訂圖示、顏色、文字樣式與點擊事件。
///
/// ---
///
/// 使用範例：
/// ```
/// BottomNavigationItem(
///   iconSet: BottomNavigationIconSet(
///     selectedIcon: 'assets/icon_home_selected.svg',
///     unselectedIcon: 'assets/icon_home.svg',
///     selectedIconColor: Colors.blue,
///     unselectedIconColor: Colors.grey,
///   ),
///   labelSet: BottomNavigationLabelSet(
///     text: '首頁',
///     selectedTextStyle: TextStyle(color: Colors.blue),
///     unselectedTextStyle: TextStyle(color: Colors.grey),
///   ),
///   isSelected: currentIndex == 0,
///   onTap: () => setState(() => currentIndex = 0),
/// )
/// ```
class BottomNavigationItem extends StatelessWidget {
  /// 圖示設定（包含 selected/unselected 圖示與顏色）
  final BottomNavigationIconSet? iconSet;

  /// 文字設定（包含樣式）
  final BottomNavigationLabelSet? labelSet;

  /// 點擊事件 callback
  final VoidCallback? onTap;

  /// 是否為選中狀態
  final bool isSelected;

  const BottomNavigationItem({
    super.key,
    this.iconSet,
    this.labelSet,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque, // 提高點擊範圍
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconSet != null) ...[
            AppIcon(
              iconName: isSelected ? iconSet!.selectedIcon : iconSet!.unselectedIcon,
              color: isSelected ? iconSet!.selectedIconColor : iconSet!.unselectedIconColor,
              padding: 4.0,
            )
          ],
          if (labelSet != null) ...[
            Text(
              labelSet!.text,
              style: isSelected
                  ? labelSet!.selectedTextStyle
                  : labelSet!.unselectedTextStyle,
            ),
          ],
        ],
      ),
    );
  }
}
