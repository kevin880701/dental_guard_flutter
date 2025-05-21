import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_manager.dart';
import 'input_type.dart';
import 'unfocus_wrapper.dart';

/// 通用輸入欄位元件 InputWidget
///
/// 提供單行 / 多行文字輸入、驗證格式、自訂樣式、Emoji/Symbol 控制、清除按鈕、唯讀狀態等功能。
///
/// ---
/// 使用範例：
/// ```
/// InputWidget(
///   hintText: '請輸入名稱',
///   inputType: InputType.TEXT,
///   maxLength: 20,
///   isMultiline: false,
///   showClearIcon: true,
///   isValidate: true,
///   validator: (text) => text.isEmpty ? '不可為空' : null,
///   onChanged: (value) => print('輸入：$value'),
/// )
/// ```
class InputWidget extends StatefulWidget {
  /// 提示文字
  final String? hintText;

  /// 預設文字
  final String? defaultText;

  /// 是否顯示清除按鈕 (右上角 X)
  final bool showClearIcon;

  /// 是否允許輸入符號
  final bool isAllowSymbols;

  /// 是否允許輸入 Emoji
  final bool isAllowEmoji;

  /// 是否可編輯
  final bool isEdit;

  /// 輸入類型 (例如 TEXT、NUMBER、EMAIL 等)
  final InputType inputType;

  /// 最大輸入長度
  final int? maxLength;

  /// 是否為多行輸入
  final bool isMultiline;

  /// 最小高度（可用來自動計算行數）
  final double? minHeight;

  /// 最小行數（用於控制 TextField 的初始高度）
  final int minLines;

  /// 背景顏色
  final Color? backgroundColor;

  /// 邊框顏色
  final Color borderColor;

  /// 錯誤狀態邊框顏色
  final Color errorBorderColor;

  /// 聚焦狀態邊框顏色
  final Color focusBorderColor;

  /// 自訂驗證規則
  final String? Function(String)? validator;

  /// 輸入控制器（可外部傳入）
  final TextEditingController? controller;

  /// 輸入變更回調
  final ValueChanged<String>? onChanged;

  /// 輸入文字樣式
  final TextStyle? inputStyle;

  /// hint 文字樣式
  final TextStyle? hintStyle;

  const InputWidget({
    super.key,
    this.hintText,
    this.defaultText,
    this.inputType = InputType.ALL,
    this.showClearIcon = false,
    this.isAllowSymbols = false,
    this.isAllowEmoji = false,
    this.isEdit = true,
    this.maxLength,
    this.isMultiline = false,
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
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController(text: widget.defaultText ?? '');
    _focusNode = FocusNode();
    _focusNode.addListener(() => setState(() {})); // 更新 focus 樣式
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  /// 判斷邊框顏色（一般 / 錯誤 / 聚焦）
  Color getIndicatorColor() {
    if (_errorText != null) return widget.errorBorderColor;
    if (_focusNode.hasFocus) return widget.focusBorderColor;
    return widget.borderColor;
  }

  /// 計算多行輸入最小行數
  int calculateMinLines(double availableHeight) {
    if (widget.isMultiline) {
      final lineHeight = widget.inputStyle?.fontSize ?? 18.0;
      final calculated = widget.minHeight != null
          ? (widget.minHeight! / lineHeight).floor()
          : (availableHeight / lineHeight).floor();
      return calculated < widget.minLines ? widget.minLines : calculated;
    }
    return widget.minLines;
  }

  /// 建立 TextField 元件
  Widget buildTextField(double availableHeight) {
    return TextField(
      readOnly: !widget.isEdit,
      controller: _controller,
      cursorColor: getIndicatorColor(),
      focusNode: _focusNode,
      style: widget.inputStyle ?? const TextStyle(fontSize: 18.0, color: Colors.black),
      keyboardType: InputManager.getKeyboardType(widget.inputType),
      autofillHints: InputManager.getAutofillHints(widget.inputType),
      maxLines: widget.isMultiline ? null : 1,
      minLines: calculateMinLines(availableHeight),
      decoration: InputDecoration(
        hintText: widget.hintText ?? "請輸入",
        hintStyle: widget.hintStyle ?? const TextStyle(color: Colors.grey, fontSize: 18.0),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      inputFormatters: InputManager.getInputFormatters(
        widget.inputType,
        maxLength: widget.maxLength,
        isAllowSymbols: widget.isAllowSymbols,
        isAllowEmoji: widget.isAllowEmoji,
      ),
      onChanged: (value) {
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = widget.minHeight ??
            (constraints.maxHeight.isFinite ? constraints.maxHeight : 200.0);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? Colors.transparent,
                border: Border.all(color: getIndicatorColor()),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildUnfocusWrapper(
                      child: buildTextField(availableHeight),
                      isEdit: widget.isEdit,
                    ),
                  ),
                  if (widget.showClearIcon)
                    IconButton(
                      icon: Icon(Icons.close, color: getIndicatorColor(), size: 18),
                      padding: const EdgeInsets.all(4.0),
                      constraints: const BoxConstraints(),
                      onPressed: () {
                        setState(() {
                          _controller.clear();
                          _errorText = null;
                        });
                        widget.onChanged?.call('');
                      },
                    ),
                ],
              ),
            ),
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
      },
    );
  }
}
