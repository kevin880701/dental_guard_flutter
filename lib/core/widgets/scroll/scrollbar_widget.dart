import 'package:dental_guard_flutter/core/widgets/scroll/scrollbar_visibility.dart';
import 'package:flutter/material.dart';

class ScrollbarWidget extends StatelessWidget {
  final Widget child;
  final ScrollBarVisibility scrollBarVisibility;
  final ScrollController? controller;
  final Axis scrollDirection;
  final Color? thumbColor;
  final bool isRounded;
  final double thickness;

  const ScrollbarWidget({
    super.key,
    required this.child,
    this.scrollBarVisibility = ScrollBarVisibility.onScroll,
    this.controller,
    this.scrollDirection = Axis.vertical,
    this.thumbColor = Colors.grey,
    this.isRounded = true,
    this.thickness = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    if (scrollBarVisibility == ScrollBarVisibility.never) {
      return SingleChildScrollView(
        controller: controller,
        scrollDirection: scrollDirection,
        child: child,
      );
    }

    bool? thumbVisibility;
    if (scrollBarVisibility == ScrollBarVisibility.always) {
      thumbVisibility = true;
    } else if (scrollBarVisibility == ScrollBarVisibility.onScroll) {
      thumbVisibility = null;
    }

    return RawScrollbar(
      thumbVisibility: thumbVisibility,
      controller: controller,
      thumbColor: thumbColor,
      radius: isRounded ? const Radius.circular(8.0) : Radius.zero,
      thickness: thickness,
      child: SingleChildScrollView(
        controller: controller,
        scrollDirection: scrollDirection,
        child: child,
      ),
    );
  }
}
