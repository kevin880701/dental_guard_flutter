import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsUtil {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// 儲存字串
  static Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  /// 取得字串
  static String? getString(String key) {
    return _prefs?.getString(key);
  }

  /// 儲存 int
  static Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  /// 取得 int
  static int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  /// 儲存 bool
  static Future<void> setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  /// 取得 bool
  static bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  /// 儲存 double
  static Future<void> setDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  /// 取得 double
  static double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  /// 儲存字串列表
  static Future<void> setStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  /// 取得字串列表
  static List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  /// 移除指定 key
  static Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }

  /// 清空所有資料
  static Future<void> clear() async {
    await _prefs?.clear();
  }
}
