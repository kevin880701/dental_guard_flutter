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

  int get timeSpace {
    switch (this) {
      case ChartTimeStatus.hour:
        return 1; // 1小時
      case ChartTimeStatus.day:
        return 2; // 1天
      case ChartTimeStatus.month:
        return 3; // 1月
      case ChartTimeStatus.year:
        return 4; // 1年
      default:
        return 2;
    }
  }
}

/// 根據 ChartTimeStatus 給定 start, end ISO8601 字串
({String start, String end}) getChartDateRange(DateTime selectTime, ChartTimeStatus status) {
  late DateTime start;
  late DateTime end;

  switch (status) {
    case ChartTimeStatus.day:
    // 00:00:00 ~ 23:59:59
      start = DateTime(selectTime.year, selectTime.month, selectTime.day, 0, 0, 0);
      end = DateTime(selectTime.year, selectTime.month, selectTime.day, 23, 59, 59);
      break;
    case ChartTimeStatus.month:
    // 當月1號 ~ 最後一天
      start = DateTime(selectTime.year, selectTime.month, 1);
      // 下個月1號-1天就是最後一天
      end = DateTime(selectTime.year, selectTime.month + 1, 1).subtract(const Duration(days: 1));
      end = DateTime(end.year, end.month, end.day, 23, 59, 59);
      break;
    case ChartTimeStatus.year:
    // 1/1 ~ 12/31
      start = DateTime(selectTime.year, 1, 1);
      end = DateTime(selectTime.year, 12, 31, 23, 59, 59);
      break;
    case ChartTimeStatus.hour:
    // 當小時的00:00 ~ 59:59
      start = DateTime(selectTime.year, selectTime.month, selectTime.day, selectTime.hour, 0, 0);
      end = DateTime(selectTime.year, selectTime.month, selectTime.day, selectTime.hour, 59, 59);
      break;
  }

  return (start: start.toUtc().toIso8601String(), end: end.toUtc().toIso8601String());
}
