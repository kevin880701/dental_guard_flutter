import 'package:intl/intl.dart';

enum ChartTimeStatus {
  hour,
  day,
  month,
  year,
}

extension ChartTimeStatusExtension on ChartTimeStatus {
  /// 根據目前的狀態格式化時間
  String formatTime(DateTime dt) {
    switch (this) {
      case ChartTimeStatus.day:
        return DateFormat('HH:mm').format(dt);
      case ChartTimeStatus.month:
        return DateFormat('MM/dd').format(dt);
      case ChartTimeStatus.year:
        return DateFormat('yyyy/MM').format(dt);
      case ChartTimeStatus.hour:
        return DateFormat('mm').format(dt);
    }
  }

  /// 報表表頭－本期文字
  String get currentText {
    switch (this) {
      case ChartTimeStatus.day:
        return '本日';
      case ChartTimeStatus.month:
        return '本月';
      case ChartTimeStatus.year:
        return '今年';
      case ChartTimeStatus.hour:
        return '本小時';
    }
  }

  /// 基線/比較期文字
  String get baseLineText {
    switch (this) {
      case ChartTimeStatus.day:
        return '昨日';
      case ChartTimeStatus.month:
        return '上個月';
      case ChartTimeStatus.year:
        return '歷年';
      case ChartTimeStatus.hour:
        return '上個小時';
    }
  }
}