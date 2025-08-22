import 'package:flutter/services.dart';

import '../../utils/validator/email_validator.dart';
import '../../utils/validator/validators.dart';
import 'input_type.dart';

final emojiRegExp = RegExp(
  r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])',
);

final symbolRegExp = RegExp(r'[\u0021-\u002F\u003A-\u0040\u005B-\u0060\u007B-\u007E' // 常見半形符號
r'\u00A1-\u00BF'                                          // 西文標點和貨幣符號
r'\u02B9-\u02FF'                                          // 音標及標記
r'\u2000-\u206F'                                          // 常見標點符號
r'\u20A0-\u20CF'                                          // 貨幣符號
r'\u2100-\u214F'                                          // 字母和數學符號
r'\u2190-\u21FF'                                          // 箭頭符號
r'\u2200-\u22FF'                                          // 數學運算符
r'\u2300-\u23FF'                                          // 技術符號
r'\u2500-\u257F'                                          // 矩形和方塊符號
r'\u25A0-\u25FF'                                          // 幾何圖形
r'\u2600-\u26FF'                                          // 各種符號（如天氣、撲克牌等）
r'\u2E00-\u2E7F'                                          // 補充標點
r'\u3000-\u303F'                                          // CJK 符號和標點
r'\uFE30-\uFE4F'                                          // 中日韓兼容符號
r'\uFE50-\uFE6F'                                          // 小型標點符號
r'\uFF01-\uFF5E'                                          // 全形符號
r'\u0370-\u03FF'                                          // 希臘字母區間 (Ω, μ, Π 等)
r'\u03C0\u00F7\u00D7\uFE0F]');                            // 特定符號: π, ÷, ×, 和一些修飾符

class DashTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // 清除之前輸入的'-'符號，並保留數字
    String newText = newValue.text.replaceAll('-', '');

    // 如果字串長度大於4，並且還沒有加上'-'符號，自動加上
    if (newText.length > 4) {
      newText = '${newText.substring(0, 4)}-${newText.substring(4)}';
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

class InputManager {
  static List<TextInputFormatter> getInputFormatters(
      InputType inputType, {
        int? maxLength,
        bool isAllowSymbols = false,
        bool isAllowEmoji = false,
      }) {
    // 如果是 EMAIL 類型則最大長度為 96，若是 PHONENUMBER 則最大長度限制為 11
    final int? effectiveMaxLength = (inputType == InputType.EMAIL)
        ? 96
        : (inputType == InputType.PHONENUMBER)
        ? (maxLength != null && maxLength > 11 ? 11 : maxLength)
        : maxLength;
    List<TextInputFormatter> formatters = [];

    // 添加 Emoji 過濾器
    if (!isAllowEmoji) {
      // formatters.add(FilteringTextInputFormatter.deny(emojiRegExp));
    }

    // 添加符號過濾器
    if (!isAllowSymbols && inputType == InputType.ALL) {
      formatters.add(FilteringTextInputFormatter.deny(symbolRegExp));
    }

    // 根據 inputType 添加特定格式化規則
    switch (inputType) {
      case InputType.EMAIL:
        formatters.add(FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@.]')));
        break;
      case InputType.PHONENUMBER:
        formatters.add(FilteringTextInputFormatter.allow(RegExp(r'[0-9-]')));
        formatters.add(DashTextInputFormatter());
      case InputType.NUMBER:
        formatters.add(FilteringTextInputFormatter.digitsOnly);
        break;
      case InputType.ALPHANUMERIC:
        formatters.add(FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')));
        break;
      default:
        break;
    }

    // 添加最大長度限制
    if (effectiveMaxLength != null) {
      formatters.add(LengthLimitingTextInputFormatter(effectiveMaxLength));
    }

    return formatters;
  }

  static TextInputType getKeyboardType(InputType inputType) {
    switch (inputType) {
      case InputType.EMAIL:
        return TextInputType.emailAddress;
      case InputType.PHONENUMBER:
      case InputType.NUMBER:
        return TextInputType.number;
      case InputType.ALPHANUMERIC:
        return TextInputType.visiblePassword;
      case InputType.ALL:
      default:
        return TextInputType.multiline;
    }
  }

  static List<String>? getAutofillHints(InputType inputType) {
    switch (inputType) {
      case InputType.EMAIL:
        return [AutofillHints.email];
      case InputType.PHONENUMBER:
        return [AutofillHints.telephoneNumber];
      case InputType.NUMBER:
        return [AutofillHints.creditCardNumber];
      case InputType.USERNAME:
        return [AutofillHints.username];
      case InputType.PASSWORD:
        return [AutofillHints.password];
      default:
        return null;
    }
  }

  static bool validateInput(String input, InputType inputType) {
    switch (inputType) {
      case InputType.EMAIL:
        return EmailValidator.validate(input);
      case InputType.PHONENUMBER:
        return isValidPhoneNumber(input);
      case InputType.NUMBER:
        return isNumeric(input);
      case InputType.ALPHANUMERIC:
        return isAlphanumeric(input);
      default:
        return true;
    }
  }
}