
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
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

  DateTime convertToTimeZone([int offsetHour = 8]) {
    return toUtc().add(Duration(hours: offsetHour));
  }
}

extension ContextSizeExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

String addLeadingZero(dynamic value, {int width = 2}) => value.toString().padLeft(width, '0');


String getCurrentPlatform() {
  if (kIsWeb) return "web";
  if (Platform.isAndroid) return "android";
  if (Platform.isIOS) return "ios";
  if (Platform.isMacOS) return "macos";
  if (Platform.isWindows) return "windows";
  if (Platform.isLinux) return "linux";
  return "unknown";
}

bool isDebugVersionGreater(String debugVersion, String? appVersion) {
  if (appVersion == null) return true; // 沒有 app 版本就直接當 release 比較新

  String normalize(String v) =>
      v.replaceAll(RegExp(r'[^0-9]'), ''); // 移除所有非數字

  final releaseNum = int.tryParse(normalize(debugVersion)) ?? 0;
  final appNum = int.tryParse(normalize(appVersion)) ?? 0;
  return releaseNum >= appNum;
}

Future<void> openStore() async {
  final androidUrl = 'https://play.google.com/store/apps/details?id=com.lhr.oralcare';
  final iosUrl = 'https://apps.apple.com/app/com.lhr.oralcare';

  final url = Theme.of(navigatorKey.currentContext!).platform == TargetPlatform.iOS
      ? iosUrl
      : androidUrl;

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  } else {
  }
}

void exitApp() {
  if (Platform.isAndroid) {
    SystemNavigator.pop();
  } else if (Platform.isIOS) {
    exit(0); // 強制結束
  }
}