import 'package:flutter/material.dart';

enum LineDirection { horizontal, vertical }

class LineWidget extends StatelessWidget {
  final LineDirection direction;
  final double thickness;
  final Color color;
  final bool isRounded;
  final bool isDashed;
  final double dashLength;
  final double gap;

  const LineWidget({
    super.key,
    required this.direction,
    this.thickness = 2.0,
    this.color = Colors.black,
    this.isRounded = false,
    this.isDashed = false,
    this.dashLength = 10.0,
    this.gap = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    final isHorizontal = direction == LineDirection.horizontal;

    if (!isDashed) {
      // Render solid shape
      return SizedBox(
        width: isHorizontal ? double.infinity : thickness,
        height: isHorizontal ? thickness : double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            borderRadius: isRounded ? BorderRadius.circular(thickness / 2) : BorderRadius.zero,
          ),
        ),
      );
    } else {
      // Render dashed shape
      return LayoutBuilder(
        builder: (context, constraints) {
          final maxExtent = isHorizontal ? constraints.maxWidth : constraints.maxHeight;
          final dashCount = (maxExtent / (dashLength + gap)).floor();

          return Flex(
            direction: isHorizontal ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dashCount, (index) {
              return SizedBox(
                width: isHorizontal ? dashLength : thickness,
                height: isHorizontal ? thickness : dashLength,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: isRounded ? BorderRadius.circular(thickness / 2) : BorderRadius.zero,
                  ),
                ),
              );
            }),
          );
        },
      );
    }
  }
}
