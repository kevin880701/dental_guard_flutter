import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._privateConstructor();
  static final SharedPreferencesHelper instance =
  SharedPreferencesHelper._privateConstructor();

  Future<SharedPreferences> get _prefs async =>
      await SharedPreferences.getInstance();

  // 保存是否保持登入的狀態
  Future<void> saveKeepLogin(bool isKeepLogin) async {
    final prefs = await _prefs;
    await prefs.setBool("keepLogin", isKeepLogin);
  }

  // 獲取是否保持登入的狀態
  Future<bool?> getKeepLogin() async {
    final prefs = await _prefs;
    return prefs.getBool("keepLogin");
  }

  // 保存帳號
  Future<void> saveAccount(String account) async {
    final prefs = await _prefs;
    await prefs.setString("account", account);
  }

  // 獲取帳號
  Future<String?> getAccount() async {
    final prefs = await _prefs;
    return prefs.getString("account");
  }

  // 保存密碼
  Future<void> savePassword(String password) async {
    final prefs = await _prefs;
    await prefs.setString("password", password);
  }

  // 獲取密碼
  Future<String?> getPassword() async {
    final prefs = await _prefs;
    return prefs.getString("password");
  }

  // 清除帳號和密碼
  Future<void> clearAccountAndPassword() async {
    final prefs = await _prefs;
    await prefs.remove("account");
    await prefs.remove("password");
  }
}
