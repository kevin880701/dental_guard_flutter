
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:dental_guard_flutter/core/constants/api_endpoints.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:dental_guard_flutter/core/widgets/image/network_image_widget.dart';
import '../../../analyze/data/models/response/analyze_result/analyze_result_data.dart';

class TeethImageView extends StatelessWidget {
  final AnalyzeResultData? analyzeResult;

  const TeethImageView({
    super.key,
    required this.analyzeResult,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (analyzeResult != null && analyzeResult!.score >= 0) ...[
                    Expanded(flex: 1,child: NetworkImageWidget(
                      width: double.infinity,
                      fit: BoxFit.contain,
                      imageUrl:
                      '${ApiEndPoint.domain}${ApiEndPoint.getAnalyzeImage(analyzeResult!.analyzePath)}/teeth_range.png',
                    ),)
                    ,
                    if(analyzeResult!.isSuccess == 1)...[
                      Expanded(flex: 1,child:NetworkImageWidget(
                        width: double.infinity,
                        fit: BoxFit.contain,
                        imageUrl:
                        '${ApiEndPoint.domain}${ApiEndPoint.getAnalyzeImage(analyzeResult!.analyzePath)}/teeth_range_detect.png',
                      ),)]
                  ] else ...[
                    Expanded(flex: 1,child:NetworkImageWidget(
                      width: double.infinity,
                      fit: BoxFit.contain,
                      imageUrl:
                      '${ApiEndPoint.domain}${ApiEndPoint.getAnalyzeImage(analyzeResult!.analyzePath)}/teeth_range_detect.png',
                    ),),
                  ],
                ],
              )),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            alignment: Alignment.center,
            width: double.infinity,
            color: getPlaqueColor(analyzeResult?.score, analyzeResult?.isSuccess),
            child: AppText(
              text: getPlaqueMessage(analyzeResult?.score, analyzeResult?.isSuccess),
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageErrorWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.broken_image, size: 36, color: Colors.grey),
        Text(
          '圖片載入失敗',
          style: TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Color getPlaqueColor(double? score, int? isSuccess) {
    if (isSuccess == null || isSuccess == 0)  return Colors.red;
    if (score == null) return Colors.yellow;
    return score < 0
        ? Colors.red
        : score < 30
            ? Colors.green
            : Colors.red;
  }

  String getPlaqueMessage(double? score, int? isSuccess) {
    if (isSuccess == null || isSuccess == 0)  return AppStrings.detectionFailed;
    if (score == null) return "請重新拍攝一次";
    return score < 0
        ? "偵測失敗"
        : score < 30
            ? "牙菌斑含量為${score.toStringAsFixed(2)}%，做得很好！"
            : "牙菌斑含量為${score.toStringAsFixed(2)}%，再加強一下！";
  }
}
