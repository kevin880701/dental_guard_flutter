import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {

  SharedPreferencesHelper._privateConstructor();
    static final SharedPreferencesHelper instance =
  SharedPreferencesHelper._privateConstructor();

  Future<SharedPreferences> get _prefs async =>
      await SharedPreferences.getInstance();

  Future<void> saveKeepLogin(bool isKeepLogin) async {
    final prefs = await _prefs;
    await prefs.setBool("keepLogin", isKeepLogin);
  }

  Future<bool?> getKeepLogin() async {
    final prefs = await _prefs;
    return prefs.getBool("keepLogin");
  }

  Future<void> saveToken(String token) async {
    final prefs = await _prefs;
    await prefs.setString("token", token);
  }

  Future<String?> getToken() async {
    final prefs = await _prefs;
    return prefs.getString("token");
  }

  Future<void> saveFirstLaunch(bool isFirstLaunch) async {
    final prefs = await _prefs;
    await prefs.setBool("isFirstLaunch", isFirstLaunch);
  }

  Future<bool> isFirstLaunch() async {
    final prefs = await _prefs;
    return prefs.getBool("isFirstLaunch") ?? true;
  }
}
