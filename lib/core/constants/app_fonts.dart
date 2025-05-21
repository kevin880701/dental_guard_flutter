import 'dart:io';

class AppFonts {
  static const pingFangTC = 'PingFangTC';
  static const notoSansTC = 'NotoSansTC';

  static String getFontFamily() {
    return Platform.isIOS ? pingFangTC : notoSansTC;
  }
}
