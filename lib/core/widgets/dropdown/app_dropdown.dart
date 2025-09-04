import 'package:flutter/material.dart';

/// 自訂下拉選單元件 AppDropdown
///
/// 可客製化選單樣式、選中樣式、icon 顏色、邊框、padding、主視圖樣式等。
///
/// ---
///
/// 使用範例：
/// ```
/// ValueNotifier<int> selectedIndex = ValueNotifier(0);
///
/// AppDropdown(
///   items: ['選項1', '選項2', '選項3'],
///   selectedValue: selectedIndex,
///   onChanged: (index, value) => print('選中 $index: $value'),
///   backgroundColor: Colors.white,
///   borderColor: Colors.grey,
///   iconColor: Colors.black,
///   textStyle: TextStyle(fontSize: 16, color: Colors.black),
///   selectedTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
///   itemTextStyle: TextStyle(fontSize: 14, color: Colors.black87),
///   selectedBackgroundColor: Colors.lightBlueAccent,
///   itemBorderColor: Colors.blueGrey,
///   itemBorderRadius: 6,
///   itemSpacing: 8,
///   itemBackgroundColor: Colors.white,
///   itemBorderWidth: 1.0,
///   menuElevation: 4,
///   menuBorderColor: Colors.grey,
///   menuBorderWidth: 1.0,
///   menuBorderRadius: 10,
///   menuBackgroundColor: Colors.white,
///   menuPadding: EdgeInsets.all(8),
/// )
/// ```
class AppDropdown extends StatefulWidget {
  /// 選項列表
  final List<String> items;

  /// 選中的項目（以 index 控制）
  final ValueNotifier<int> selectedValue;

  /// 選擇改變時 callback
  final void Function(int, String) onChanged;

  /// 主體 icon 顏色
  final Color iconColor;

  /// 主視圖背景色
  final Color backgroundColor;

  /// 主視圖邊框顏色
  final Color borderColor;

  /// 主視圖文字顏色
  final Color fontColor;

  /// 是否啟用點擊
  final bool isEnable;

  /// 主視圖 padding
  final EdgeInsetsGeometry padding;

  /// 下拉選項 item 邊框顏色
  final Color itemBorderColor;

  /// 下拉選項 item 背景色
  final Color itemBackgroundColor;

  /// 下拉選項 item 邊框寬度
  final double itemBorderWidth;

  /// 下拉選項 item 圓角
  final double itemBorderRadius;

  /// 下拉選項之間的間距
  final double itemSpacing;

  /// 自訂主視圖的 builder（可選）
  final Widget Function(BuildContext context, bool isOpen)? mainWidgetBuilder;

  /// 下拉選單陰影高度
  final double menuElevation;

  /// 下拉選單邊框顏色
  final Color menuBorderColor;

  /// 下拉選單背景色
  final Color menuBackgroundColor;

  /// 下拉選單邊框寬度
  final double menuBorderWidth;

  /// 下拉選單圓角
  final double menuBorderRadius;

  /// 下拉選單內部 padding
  final EdgeInsetsGeometry menuPadding;

  /// 主視圖的文字樣式
  final TextStyle textStyle;

  /// 下拉選項的文字樣式
  final TextStyle itemTextStyle;

  /// 選中時的文字樣式
  final TextStyle selectedTextStyle;

  /// 選中時主視圖背景色
  final Color selectedBackgroundColor;

  const AppDropdown({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.iconColor = Colors.grey,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.grey,
    this.fontColor = Colors.black,
    this.isEnable = true,
    this.padding = const EdgeInsets.all(8),
    this.itemBorderColor = Colors.transparent,
    this.itemBackgroundColor = Colors.transparent,
    this.itemBorderWidth = 1.0,
    this.itemBorderRadius = 0.0,
    this.itemSpacing = 4.0,
    this.mainWidgetBuilder,
    this.menuElevation = 0.0,
    this.menuBorderColor = Colors.grey,
    this.menuBackgroundColor = Colors.white,
    this.menuBorderWidth = 1.0,
    this.menuBorderRadius = 8.0,
    this.menuPadding = const EdgeInsets.all(0.0),
    this.textStyle = const TextStyle(fontSize: 16, color: Colors.black),
    this.itemTextStyle = const TextStyle(fontSize: 14, color: Colors.black),
    this.selectedTextStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    this.selectedBackgroundColor = Colors.white,
  });

  @override
  _AppDropdownState createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  final GlobalKey _buttonKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool isMenuOpen = false;

  void _showMenu(BuildContext context) {
    final RenderBox renderBox = _buttonKey.currentContext!.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;
    final EdgeInsets resolvedPadding = widget.menuPadding.resolve(TextDirection.ltr);

    setState(() {
      isMenuOpen = true;
    });

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: _removeMenu,
            child: Container(color: Colors.transparent),
          ),
          Positioned(
            top: offset.dy + size.height + resolvedPadding.top,
            left: offset.dx,
            child: Material(
              elevation: widget.menuElevation,
              color: widget.menuBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.menuBorderRadius),
                side: BorderSide(color: widget.menuBorderColor, width: widget.menuBorderWidth),
              ),
              child: Padding(
                padding: resolvedPadding,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.4,
                    maxWidth: size.width,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: widget.items.asMap().entries.map((entry) {
                        int index = entry.key;
                        String item = entry.value;
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: widget.itemBorderColor, width: widget.itemBorderWidth),
                            borderRadius: BorderRadius.circular(widget.itemBorderRadius),
                            color: widget.itemBackgroundColor,
                          ),
                          margin: EdgeInsets.only(bottom: widget.itemSpacing),
                          child: InkWell(
                            onTap: () {
                              widget.selectedValue.value = index;
                              widget.onChanged(index, item);
                              _removeMenu();
                            },
                            child: Container(
                              width: size.width,
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                item,
                                style: widget.itemTextStyle,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeMenu() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() {
      isMenuOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _buttonKey,
      onTap: widget.isEnable ? () => _showMenu(context) : null,
      child: widget.mainWidgetBuilder != null
          ? widget.mainWidgetBuilder!(context, isMenuOpen)
          : Container(
        width: double.infinity,
        padding: widget.padding,
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: isMenuOpen
              ? widget.selectedBackgroundColor
              : widget.backgroundColor,
        ),
        child: Row(
          children: [
            ValueListenableBuilder<int>(
              valueListenable: widget.selectedValue,
              builder: (context, value, child) {
                return Text(
                  widget.items[value],
                  style: isMenuOpen ? widget.selectedTextStyle : widget.textStyle,
                );
              },
            ),
            const Spacer(),
            Icon(
              isMenuOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              color: widget.iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
