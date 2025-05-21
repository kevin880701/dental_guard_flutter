import 'package:flutter/material.dart';

/// MultiRowTabBar - 多行多列的自訂 Tab Bar 元件
///
/// 用於需要在一個區塊中展示多個選項的情境，支援：
/// - 每列自動最多4個
/// - 支援選中與非選中樣式
/// - 支援背景顏色控制
/// - 支援選擇 callback
///
/// ---
///
/// 使用範例：
/// ```
/// MultiRowTabBar(
///   items: ['A', 'B', 'C', 'D', 'E', 'F'],
///   selectedTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
///   unselectedTextStyle: TextStyle(color: Colors.black87),
///   selectedBackgroundColor: Colors.blue,
///   unselectedBackgroundColor: Colors.grey.shade200,
///   onSelected: (index, value) {
///     print('選中第 $index 項：$value');
///   },
/// )
/// ```
class MultiRowTabBar extends StatefulWidget {
  /// 顯示的選項列表
  final List<String> items;

  /// 選擇回調 (index, value)
  final Function(int index, String value)? onSelected;

  /// 被選中的文字樣式
  final TextStyle selectedTextStyle;

  /// 未被選中的文字樣式
  final TextStyle unselectedTextStyle;

  /// 被選中的背景色
  final Color selectedBackgroundColor;

  /// 未被選中的背景色
  final Color unselectedBackgroundColor;

  const MultiRowTabBar({
    super.key,
    required this.items,
    this.onSelected,
    required this.selectedTextStyle,
    required this.unselectedTextStyle,
    required this.selectedBackgroundColor,
    required this.unselectedBackgroundColor,
  });

  @override
  State<MultiRowTabBar> createState() => _MultiRowTabBarState();
}

class _MultiRowTabBarState extends State<MultiRowTabBar> {
  /// 當前選中的項目
  String? selectedItem;

  late double _minItemHeight;

  @override
  void initState() {
    super.initState();
    if (widget.items.isNotEmpty) {
      selectedItem = widget.items.first; // 一開始預設選中第一個
    }

    // 計算統一的最小高度
    _minItemHeight = _calculateUniformHeight();
  }

  double _calculateUniformHeight() {
    final selectedFontSize = widget.selectedTextStyle.fontSize ?? 14.0;
    final unselectedFontSize = widget.unselectedTextStyle.fontSize ?? 14.0;
    final maxFontSize = selectedFontSize > unselectedFontSize ? selectedFontSize : unselectedFontSize;

    // 統一高度設定為最大字體高度的 2.2 倍，包含內距和字體空間
    return maxFontSize * 2.2;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildRows(),
    );
  }

  /// 將項目分批建構為多列 Row，每列最多4個
  List<Widget> _buildRows() {
    List<Widget> rows = [];

    for (int i = 0; i < widget.items.length; i += 4) {
      rows.add(
        Row(
          children: List.generate(4, (index) {
            int dataIndex = i + index;
            bool hasData = dataIndex < widget.items.length;

            return Expanded(
              child: GestureDetector(
                onTap: hasData
                    ? () {
                  setState(() {
                    selectedItem = widget.items[dataIndex];
                  });
                  widget.onSelected?.call(dataIndex, widget.items[dataIndex]);
                }
                    : null,
                child: Container(
                  constraints: BoxConstraints(minHeight: _minItemHeight),
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: hasData && selectedItem == widget.items[dataIndex]
                        ? widget.selectedBackgroundColor
                        : widget.unselectedBackgroundColor,
                    border: Border(
                      right: BorderSide(color: Colors.grey.shade300, width: 0.5),
                      left: BorderSide(
                        color: Colors.grey.shade300,
                        width: index == 0 ? 0.5 : 0,
                      ),
                    ),
                  ),
                  child: Text(
                    hasData ? widget.items[dataIndex] : '',
                    style: hasData && selectedItem == widget.items[dataIndex]
                        ? widget.selectedTextStyle
                        : widget.unselectedTextStyle,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            );
          }),
        ),
      );
    }

    return rows;
  }
}
