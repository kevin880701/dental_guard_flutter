import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum PinCodeInputType {
  digitsOnly,
  lettersOnly,
  alphanumeric,
}

class AppPinCodeField extends StatefulWidget {
  final int length;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onCompleted;
  final double fieldWidth;
  final double fieldHeight;
  final double spacing;
  final TextStyle? textStyle;
  final Color activeColor;
  final Color inactiveColor;
  final Color selectedColor;
  final bool autoFocus;
  final PinCodeInputType inputType;

  const AppPinCodeField({
    super.key,
    this.length = 4,
    this.controller,
    this.onChanged,
    this.onCompleted,
    this.fieldWidth = 50,
    this.fieldHeight = 50,
    this.spacing = 16,
    this.textStyle,
    this.activeColor = Colors.black,
    this.inactiveColor = Colors.grey,
    this.selectedColor = Colors.black,
    this.autoFocus = false,
    this.inputType = PinCodeInputType.digitsOnly,
  });

  @override
  State<AppPinCodeField> createState() => _AppPinCodeFieldState();
}

class _AppPinCodeFieldState extends State<AppPinCodeField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  List<TextInputFormatter> _getInputFormatters() {
    switch (widget.inputType) {
      case PinCodeInputType.digitsOnly:
        return [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(widget.length),
        ];
      case PinCodeInputType.lettersOnly:
        return [
          FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z]')),
          LengthLimitingTextInputFormatter(widget.length),
        ];
      case PinCodeInputType.alphanumeric:
        return [
          FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
          LengthLimitingTextInputFormatter(widget.length),
        ];
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = FocusNode();

    _controller.addListener(() {
      final value = _controller.text;
      widget.onChanged?.call(value);
      if (value.length == widget.length) {
        widget.onCompleted?.call(value);
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = _controller.text;

    return GestureDetector(
      onTap: () => _focusNode.requestFocus(),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.length, (index) {
              final char = index < value.length ? value[index] : '';
              final isSelected = index == value.length && _focusNode.hasFocus;
              final borderColor = isSelected
                  ? widget.selectedColor
                  : (index < value.length
                  ? widget.activeColor
                  : widget.inactiveColor);
              return Container(
                width: widget.fieldWidth,
                height: widget.fieldHeight,
                margin: EdgeInsets.symmetric(horizontal: widget.spacing / 2),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: borderColor, width: 2),
                  ),
                ),
                child: Text(
                  char,
                  style: widget.textStyle ??
                      const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                ),
              );
            }),
          ),
          Positioned.fill(
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              autofocus: widget.autoFocus,
              keyboardType: TextInputType.text,
              inputFormatters: _getInputFormatters(),
              textAlign: TextAlign.center,
              cursorColor: Colors.transparent,
              style: const TextStyle(color: Colors.transparent),
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
