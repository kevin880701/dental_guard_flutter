import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../image/asset_image_widget.dart';
import '../text/app_text.dart';

/// 可展開的圖片格狀區塊元件 ImageGridExpansion
///
/// 用於顯示標題 + 圖片 Grid，支援點擊展開/收合區塊。
/// 圖片列表使用 AssetImageWidget 渲染，可自訂欄數與間距。
///
/// ---
///
/// 使用範例：
/// ```
/// ImageGridExpansion(
///   title: '上傳圖片',
///   imageList: [
///     'assets/images/photo1.jpg',
///     'assets/images/photo2.jpg',
///     'assets/images/photo3.jpg',
///   ],
///   crossAxisCount: 3,
///   spacing: 12,
/// )
/// ```
class ImageGridExpansion extends HookWidget {
  /// 標題文字
  final String title;

  /// 圖片資源清單（asset 路徑）
  final List<String> imageList;

  /// 每行顯示幾張圖片（預設 4）
  final int crossAxisCount;

  /// 圖片間距（預設 8）
  final double spacing;

  /// 初始是否展開（預設 false）
  final bool? isExpanded;

  const ImageGridExpansion({
    super.key,
    required this.title,
    required this.imageList,
    this.crossAxisCount = 4,
    this.spacing = 8.0,
    this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    // 控制展開狀態
    final expansionState = isExpanded != null ? useState(isExpanded!) : useState(false);

    // 計算每張圖片寬高
    final double gridWidth = MediaQuery.of(context).size.width - (spacing * (crossAxisCount + 1));
    final double imageSize = gridWidth / crossAxisCount;

    return Column(
      children: [
        /// 標題區塊（可點擊展開/收合）
        GestureDetector(
          onTap: () {
            expansionState.value = !expansionState.value;
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                AppText(
                  text: title,
                  textAlign: TextAlign.start,
                ),
                const Spacer(),
                AnimatedRotation(
                  turns: expansionState.value ? 0.5 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: const Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ),
        ),

        /// 展開後的圖片格狀區塊
        if (expansionState.value)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: imageList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing,
              ),
              itemBuilder: (context, index) {
                return AssetImageWidget(
                  image: imageList[index],
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  enableRipple: true,
                  onTap: () {
                    print("Image $index tapped!");
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
