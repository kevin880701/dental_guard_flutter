import 'package:flutter/material.dart';

Widget gapHorizontal(double width) {
  return SizedBox(width: width);
}

Widget gapVertical(double height) {
  return SizedBox(height: height);
}

double statusBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double navigationBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.bottom;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
