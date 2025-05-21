
///
/// 用於驗證密碼是否符合規則。
///
/// Params：
///   - password: 要驗證的密碼字串
/// Return：
///   如果密碼符合規則，返回 true；否則返回 false
///
/// 示範：
/// ```
/// bool isValid = isValidatePassword('password123');
/// ```
bool isValidatePassword(String password) {
  if (password.isEmpty) return false;
  if (password.length < 8 || password.length > 20) return false;
  RegExp regex = RegExp(r'^[A-Za-z0-9]+$');
  return regex.hasMatch(password);
}

///
/// 用於檢查字串是否能被解析為整數。
///
/// Params：
///   - value: 要檢查的字串
/// Return：
///   如果字串能被解析為整數，返回 true；否則返回 false
///
/// 示範：
/// ```
/// bool isValid = tryInt('123');
/// ```
bool tryInt(String value) {
  try {
    return int.tryParse(value) != null;
  } catch (e) {
    return false;
  }
}

///
/// 判斷字串是否為空或 `null`。
///
/// Params：
///   - value: 要檢查的字串
/// Return：
///   如果字串為空或 `null`，返回 true；否則返回 false
///
/// 示範：
/// ```
/// bool isNullOrEmpty = isNullOrEmpty(null);
/// ```
bool isNullOrEmpty(String? value) {
  return value?.isEmpty ?? true;
}

///
/// 如果字串為 `null` 或空，則返回預設值。
///
/// Params：
///   - value: 要檢查的字串
///   - defaultValue: 預設值
/// Return：
///   如果字串為 `null` 或空，返回預設值；否則返回原字串
///
/// 示範：
/// ```
/// String text = defaultValue(null, '預設值');
/// ```
String defaultValue(String? value, String defaultValue) {
  return isNullOrEmpty(value) ? defaultValue : value!;
}

///
/// 驗證手機號碼是否符合台灣手機號碼格式（09開頭，後跟8位數字）。
///
/// Params：
///   - phoneNumber: 要驗證的手機號碼
/// Return：
///   如果符合格式，返回 true；否則返回 false
///
/// 示範：
/// ```
/// bool isValid = isValidPhoneNumber('0912345678');
/// ```
bool isValidPhoneNumber(String phoneNumber) {
  final regex = RegExp(r'^09\d{8}$');
  return regex.hasMatch(phoneNumber);
}

// 驗證是否為全數字
bool isNumeric(String input) {
final regex = RegExp(r'^\d+$');
return regex.hasMatch(input);
}

// 驗證是否為字母和數字
bool isAlphanumeric(String input) {
final regex = RegExp(r'^[a-zA-Z0-9]+$');
return regex.hasMatch(input);
}
