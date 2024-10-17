import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InputWidget extends HookWidget {
  final String hintText;
  final String? fieldName;
  final TextEditingController? controller;

  InputWidget({this.fieldName,this.hintText = AppTexts.plsEnter, this.controller});

  @override
  Widget build(BuildContext context) {
    // 如果沒有傳入 controller，就使用 Hook 的 useTextEditingController
    final textController = controller ?? useTextEditingController();

    return Container(
      width: double.infinity,
      child: Column(children: [
        if(fieldName != null)...[
          Align(alignment: Alignment.centerLeft,child: h3Text(fieldName!),)
        ],
        gapH8,
        TextFormField(
          controller: textController,
          decoration: InputDecoration(
            hintText: hintText, // 設置提示文字
            hintStyle: TextStyle(
              color: AppColors.hintGrey, // 提示文字的顏色
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0), // 內部間距
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0), // 圓角邊框
              borderSide: BorderSide(
                color: AppColors.borderGrey, // 邊框顏色
                width: 2.0, // 邊框寬度
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0), // 聚焦時的圓角邊框
              borderSide: BorderSide(
                color: AppColors.darkGrey, // 聚焦時的邊框顏色
                width: 2.0, // 邊框寬度
              ),
            ),
            fillColor: AppColors.white, // 背景填充顏色
            filled: true, // 開啟背景填充
          ),
        )
      ],),
    );
  }
}