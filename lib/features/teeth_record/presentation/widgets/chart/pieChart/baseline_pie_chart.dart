
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/widgets/image/app_icon.dart';

class BaselinePieChart extends StatefulWidget {
  const BaselinePieChart({
    super.key,
    required this.chartColor,
    required this.value,
    required this.icon,
    this.isGradient = false,
    this.baseValue,
  });

  final List<Color> chartColor;
  final String icon;
  final double value;
  final bool? isGradient;
  final double? baseValue;

  @override
  State<StatefulWidget> createState() => _BaselinePieChartState();
}

class _BaselinePieChartState extends State<BaselinePieChart> {
  double maxValue = 100;

  @override
  Widget build(BuildContext context) {
    List<GaugePointer> pointers = [
      RangePointer(
        value: widget.value,
        width: 0.22,
        sizeUnit: GaugeSizeUnit.factor,
        animationDuration: 1000,
        animationType: AnimationType.easeOutBack,
        gradient: SweepGradient(
            colors: <Color>[
              widget.isGradient! ? widget.chartColor[4] : widget.chartColor[0],
              widget.chartColor[0]
            ],
            stops: <double>[0.25, 0.75]),
        enableAnimation: true,
        cornerStyle: CornerStyle.startCurve,
      ),
      MarkerPointer(
        value: widget.value,
        borderWidth: 2.5,
        color: widget.chartColor[0],
        borderColor: AppColors.white,
        markerHeight: 15,
        markerWidth: 15,
        markerType: MarkerType.circle,
        overlayRadius: 15,
      ),
    ];

    if (widget.baseValue != null) {
      pointers.add(
        MarkerPointer(
          value: widget.baseValue!.toDouble(),
          borderColor: Colors.red.withValues(alpha: 0.7),
          borderWidth: 0,
          color: Colors.red.withValues(alpha: 0.7),
          markerHeight: 10,
          markerWidth: 10,
          markerType: MarkerType.circle,
          overlayRadius: 8,
        ),
      );
    }

    return SizedBox(
      height: 64,
      width: 64,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            axisLineStyle: AxisLineStyle(
              thickness: 0.22,
              thicknessUnit: GaugeSizeUnit.factor,
              cornerStyle: CornerStyle.bothCurve,
            ),
            radiusFactor: 1,
            minorTicksPerInterval: 4,
            showFirstLabel: false,
            showLastLabel: false,
            showTicks: false,
            showLabels: false,
            maximum: maxValue,
            interval: 1,
            pointers: pointers,
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Center(
                  child: AppIcon(
                    icon: widget.icon,
                    size: 16,
                  ),
                ),
                angle: 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}

