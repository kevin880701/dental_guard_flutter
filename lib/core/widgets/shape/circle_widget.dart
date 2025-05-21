import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final double size; // 圓的大小
  final Color backgroundColor; // 背景顏色
  final Color borderColor; // 邊框顏色
  final double borderWidth; // 邊框寬度
  final VoidCallback? onTap; // 點擊事件

  const CircleWidget({
    Key? key,
    this.size = 20,
    this.backgroundColor = Colors.blue,
    this.borderColor = Colors.white,
    this.borderWidth = 2,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle, // 設定為圓形
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
      ),
    );
  }
}
