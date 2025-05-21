
import 'package:flutter/cupertino.dart';

import '../constants/app_images.dart';

String secondsToMMSS(int seconds) {
  final m = (seconds ~/ 60).toString().padLeft(2, '0');
  final s = (seconds % 60).toString().padLeft(2, '0');
  return '$m:$s';
}

extension DateTimeFormatExtension on DateTime {
  String toIsoDateTime() {
    return '${toUtc().toIso8601String().split('.').first}Z';

  }

  String toRfc3339WithOffset() {
    final offset = timeZoneOffset;
    final hours = offset.inHours.abs().toString().padLeft(2, '0');
    final minutes = (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
    final sign = offset.isNegative ? '-' : '+';

    final time = toIso8601String().split('.').first;
    return '$time$sign$hours:$minutes';
  }

  String formatDateTime() {
    return "${year}年"
        "${month.toString().padLeft(2, '0')}月"
        "${day.toString().padLeft(2, '0')}日 "
        "${hour.toString().padLeft(2, '0')}:"
        "${minute.toString().padLeft(2, '0')}:"
        "${second.toString().padLeft(2, '0')}";
  }
}

DateTime? parseIsoToDateTimeOrNull(String? isoString) {
  if (isoString == null || isoString.isEmpty) return null;

  try {
    return DateTime.parse(isoString).toLocal(); // 轉為本地時間可視需要去掉
  } catch (e) {
    return null;
  }
}

extension ContextSizeExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}
