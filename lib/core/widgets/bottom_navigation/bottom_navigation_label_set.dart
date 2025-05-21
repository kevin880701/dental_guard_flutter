import 'package:flutter/material.dart';

class BottomNavigationLabelSet {
  final String text;
  final TextStyle selectedTextStyle;
  final TextStyle unselectedTextStyle;

  const BottomNavigationLabelSet({
    required this.text,
    this.selectedTextStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 1.5,
      color: Colors.blue,
    ),
    this.unselectedTextStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: Colors.grey,
    ),
  });
}
