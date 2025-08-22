import 'package:flutter/material.dart';
import 'input_manager.dart';
import 'input_type.dart';
import 'unfocus_wrapper.dart';

/// 自訂密碼輸入欄位元件 PasswordInputWidget
///
/// 提供遮蔽密碼顯示、格式驗證、自訂樣式、符號與 Emoji 輸入控制、唯讀模式、錯誤提示等功能。
///
/// ---
/// ✅ 使用範例：
/// ```dart
/// PasswordInputWidget(
///   hintText: '請輸入密碼',
///   maxLength: 20,
///   isEdit: true,
///   validator: (value) => value.length < 6 ? '密碼至少 6 碼' : null,
///   onChanged: (value) => print('輸入密碼：$value'),
/// )
/// ```
class PasswordInputWidget extends StatefulWidget {
  /// 提示文字（預設："請輸入密碼"）
  final String? hintText;

  /// 預設輸入內容（初始文字）
  final String? defaultText;

  /// 是否允許輸入符號（預設 false）
  final bool isAllowSymbols;

  /// 是否允許輸入 Emoji（預設 false）
  final bool isAllowEmoji;

  /// 是否可編輯（false 表示唯讀模式，預設 true）
  final bool isEdit;

  /// 最大輸入長度
  final int? maxLength;

  /// 最小輸入區塊高度（用於計算 minLines）
  final double? minHeight;

  /// 最小行數（通常密碼輸入設為 1）
  final int minLines;

  /// 背景顏色（預設白色）
  final Color? backgroundColor;

  /// 邊框顏色（預設黑色）
  final Color borderColor;

  /// 錯誤邊框顏色（預設紅色）
  final Color errorBorderColor;

  /// 聚焦邊框顏色（預設藍色）
  final Color focusBorderColor;

  /// 自訂驗證函式，回傳錯誤訊息（若為 null 表示無錯誤）
  final String? Function(String)? validator;

  /// 外部傳入的 controller（若為 null，內部自建）
  final TextEditingController? controller;

  /// 值改變回調
  final ValueChanged<String>? onChanged;

  /// 輸入文字樣式
  final TextStyle? inputStyle;

  /// hint 樣式
  final TextStyle? hintStyle;

  const PasswordInputWidget({
    super.key,
    this.hintText,
    this.defaultText,
    this.isAllowSymbols = false,
    this.isAllowEmoji = false,
    this.isEdit = true,
    this.maxLength,
    this.minHeight,
    this.minLines = 1,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.black,
    this.errorBorderColor = Colors.red,
    this.focusBorderColor = Colors.blue,
    this.validator,
    this.controller,
    this.onChanged,
    this.inputStyle,
    this.hintStyle,
  });

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  String? _errorText;
  bool _obscureText = true; // 密碼遮蔽狀態

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController(text: widget.defaultText ?? '');
    _focusNode = FocusNode();
    _focusNode.addListener(() => setState(() {})); // 更新焦點狀態
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  /// 根據焦點/錯誤狀態，回傳邊框顏色
  Color getIndicatorColor() {
    if (_errorText != null) return widget.errorBorderColor;
    if (_focusNode.hasFocus) return widget.focusBorderColor;
    return widget.borderColor;
  }

  /// 建立 TextField 密碼欄位
  Widget buildTextField(double availableHeight) {
    return TextField(
      readOnly: !widget.isEdit,
      controller: _controller,
      obscureText: _obscureText,
      cursorColor: getIndicatorColor(),
      focusNode: _focusNode,
      style: widget.inputStyle ?? const TextStyle(fontSize: 18.0, color: Colors.black),
      keyboardType: TextInputType.text,
      autofillHints: const [AutofillHints.password],
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        hintText: widget.hintText ?? "請輸入密碼",
        hintStyle: widget.hintStyle ?? const TextStyle(color: Colors.grey, fontSize: 18.0),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      inputFormatters: InputManager.getInputFormatters(
        InputType.PASSWORD,
        maxLength: widget.maxLength,
        isAllowSymbols: widget.isAllowSymbols,
        isAllowEmoji: widget.isAllowEmoji,
      ),
      onChanged: (value) {
        // 若有設定 validator 則執行
        if (widget.validator != null) {
          final result = widget.validator!(value);
          setState(() => _errorText = result);
        } else {
          setState(() => _errorText = null);
        }
        widget.onChanged?.call(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final availableHeight = widget.minHeight ?? 200.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 外框容器
        Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            border: Border.all(color: getIndicatorColor()),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              // 輸入欄位本體
              Expanded(
                child: buildUnfocusWrapper(
                  child: buildTextField(availableHeight),
                  isEdit: widget.isEdit,
                ),
              ),
              // 密碼顯示/隱藏切換按鈕（僅在可編輯時顯示）
              if (widget.isEdit)
                IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: getIndicatorColor(),
                    size: 18,
                  ),
                  padding: const EdgeInsets.all(4.0),
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    setState(() => _obscureText = !_obscureText);
                  },
                ),
            ],
          ),
        ),
        // 錯誤訊息提示
        if (_errorText != null && _errorText!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 12.0),
            child: Text(
              _errorText!,
              style: const TextStyle(fontSize: 10.0, color: Colors.red),
            ),
          ),
      ],
    );
  }
}
