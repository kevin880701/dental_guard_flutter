import 'package:intl/intl.dart';

enum ChartTimeStatus {
  minute,
  quarterHour,
  hour,
  day,
  month,
  quarter,
  semester,
}

extension ChartTimeStatusExtension on ChartTimeStatus {
  /// 根據目前的狀態格式化時間
  String formatTime(DateTime dt) {
    switch (this) {
      case ChartTimeStatus.hour:
        return DateFormat('HH:mm').format(dt);
      case ChartTimeStatus.day:
        return DateFormat('MM/dd').format(dt);
      case ChartTimeStatus.month:
        return DateFormat('yyyy/MM').format(dt);
      case ChartTimeStatus.minute:
        return DateFormat('mm').format(dt);
      case ChartTimeStatus.quarterHour:
      case ChartTimeStatus.quarter:
      default:
      return DateFormat('yyyy/MM').format(dt);
    }
  }

  /// 報表表頭－本期文字
  String get currentText {
    switch (this) {
      case ChartTimeStatus.hour:
        return '本日';
      case ChartTimeStatus.day:
        return '本月';
      case ChartTimeStatus.month:
        return '今年';
      case ChartTimeStatus.minute:
        return '本小時';
      case ChartTimeStatus.quarterHour:
      case ChartTimeStatus.quarter:
      default:
        return '時間錯誤';
    }
  }

  /// 基線/比較期文字
  String get baseLineText {
    switch (this) {
      case ChartTimeStatus.hour:
        return '昨日';
      case ChartTimeStatus.day:
        return '上個月';
      case ChartTimeStatus.month:
        return '歷年';
      case ChartTimeStatus.minute:
        return '上個小時';
      case ChartTimeStatus.quarterHour:
      case ChartTimeStatus.quarter:
      default:
        return '時間錯誤';
    }
  }
}

/// 根據 ChartTimeStatus 給定 start, end ISO8601 字串
({String start, String end}) getChartDateRange(DateTime selectTime, ChartTimeStatus status) {
  late DateTime start;
  late DateTime end;

  switch (status) {
    case ChartTimeStatus.hour:
    // 00:00:00 ~ 23:59:59
      start = DateTime(selectTime.year, selectTime.month, selectTime.day, 0, 0, 0);
      end = DateTime(selectTime.year, selectTime.month, selectTime.day, 23, 59, 59);
      break;
    case ChartTimeStatus.day:
    // 當月1號 ~ 最後一天
      start = DateTime(selectTime.year, selectTime.month, 1, 8, 0, 0);
      // 下個月1號-1天就是最後一天
      end = DateTime(selectTime.year, selectTime.month + 1, 1).subtract(const Duration(days: 1));
      end = DateTime.utc(end.year, end.month, end.day, 23, 59, 59);
      break;
    case ChartTimeStatus.month:
    // 1/1 ~ 12/31
      start = DateTime(selectTime.year, 1, 1, 8, 0, 0);
      end = DateTime(selectTime.year, 12, 31, 23, 59, 59);
      break;
    case ChartTimeStatus.minute:
    // 當小時的00:00 ~ 59:59
      start = DateTime(selectTime.year, selectTime.month, selectTime.day, selectTime.hour, 0, 0);
      end = DateTime(selectTime.year, selectTime.month, selectTime.day, selectTime.hour, 59, 59);
      break;
    case ChartTimeStatus.semester:
    // 判斷 selectTime 的月份來決定是上學期還是下學期
      if (selectTime.month >= 8 || selectTime.month <= 1) {
        // 上學期 (8月 ~ 次年1月)
        int startYear = selectTime.year;
        // 如果 selectTime 是當年的 1 月，則視為前一學年度的上學期
        if (selectTime.month <= 1) {
          startYear = selectTime.year - 1;
        }
        start = DateTime(startYear, 8, 1, 8, 0, 0); // 上學期從8月1日開始
        end = DateTime(startYear + 1, 1, 31, 23, 59, 59); // 上學期到次年1月31日結束
      } else {
        // 下學期 (2月 ~ 7月)
        start = DateTime(selectTime.year, 2, 1, 8, 0, 0); // 下學期從2月1日開始
        end = DateTime(selectTime.year, 7, 31, 23, 59, 59); // 下學期到7月31日結束
      }
      break;
    case ChartTimeStatus.quarterHour:
    case ChartTimeStatus.quarter:
  }

  // 根據 status 決定是否要轉換為 UTC
  if (status == ChartTimeStatus.hour || status == ChartTimeStatus.day) {
    // 只有 hour 和 day 才轉換為 UTC
    return (start: start.toUtc().toIso8601String(), end: end.toUtc().toIso8601String());
  } else {
    // 其他情況使用本地時間
    return (start: start.toIso8601String(), end: end.toIso8601String());
  }
}
