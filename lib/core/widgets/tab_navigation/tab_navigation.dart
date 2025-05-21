import 'package:flutter/material.dart';
import '../../constants/app_resources.dart';
import '../text/app_text.dart';

class TabNavigation extends StatelessWidget {
  final List<String> items;
  final int selectedIndex;
  final ValueChanged<int> onItemTap;
  final Color labelColor;
  final Color bgColor;
  final Color unselectedLabelColor;
  final Color indicatorColor;

  const TabNavigation({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onItemTap,
    this.bgColor = AppColors.white,
    this.labelColor = AppColors.primaryBlack,
    this.unselectedLabelColor = AppColors.grey,
    this.indicatorColor = AppColors.primaryBlack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: bgColor,
      child: Row(
        children: List.generate(items.length, (index) {
          final isSelected = selectedIndex == index;
          return Expanded(
            child: GestureDetector(
              onTap: () => onItemTap(index),
              child: Stack(
                children: [
                  Container(
                    color: AppColors.transparent,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 8.0,),
                    child: AppText(
                      text: items[index],
                      color: isSelected ? labelColor : unselectedLabelColor,
                    ),
                  ),Positioned(
                    bottom: 0,
                    left: 4.0,
                    right: 4.0,
                    child: Container(
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: isSelected ? indicatorColor : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                  ,
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}