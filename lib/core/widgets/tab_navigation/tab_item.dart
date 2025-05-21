import 'package:flutter/material.dart';
import '../image/app_icon.dart';
import '../text/app_text.dart';

class TabItem extends StatelessWidget {
  final String selectedIcon;
  final String unselectedIcon;
  final String text;
  final VoidCallback? onTap;
  final bool isSelected;
  final Color selectedIconColor;
  final Color unselectedIconColor;
  final Color labelColor;
  final Color unselectedLabelColor;

  const TabItem({
    Key? key,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.text,
    this.onTap,
    this.isSelected = false,
    this.selectedIconColor = Colors.blue,
    this.unselectedIconColor = Colors.black,
    this.labelColor = Colors.blue,
    this.unselectedLabelColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(
            iconName: isSelected ? selectedIcon : unselectedIcon,
            color: isSelected ? selectedIconColor : unselectedIconColor,
            padding: 4.0,
          ),
          AppText(
            text: text,
            color: isSelected ? labelColor : unselectedLabelColor,
          ),
        ],
      ),
    );
  }
}