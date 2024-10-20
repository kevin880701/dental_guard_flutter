import 'dart:io';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';

import '../ImageDetectProvider.dart';

class DetectResultsPage extends HookConsumerWidget {
  const DetectResultsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageDetectNotifier = ref.read(imageDetectProvider.notifier);
    final imageDetectState = ref.watch(imageDetectProvider);

    final mediaSize = useState<Size?>(null);

    useEffect(() {
      if (imageDetectState.originalImage != null) {
        Image.file(imageDetectState.originalImage!)
            .image
            .resolve(ImageConfiguration())
            .addListener(
          ImageStreamListener((ImageInfo info, bool _) {
            mediaSize.value =
                Size(info.image.width.toDouble(), info.image.height.toDouble());
          }),
        );
      }

      return null;
    }, [imageDetectState.originalImage]);

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.borderGrey,
          width: 2,
        ),
      ),
      child: (imageDetectState.analyzeTeethResponse != null)
          ? Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: netImage(
                        'https://dental-service.jieniguicare.org/api/analysis/${imageDetectState.analyzeTeethResponse!.teethRangeDetectPath}'),
                  ),
                ),
                if(imageDetectState.analyzeTeethResponse != null)...[
                  Align(alignment: Alignment.topCenter, child: customText('牙菌斑占比約${imageDetectState.analyzeTeethResponse!.percentagePlaqueTotal}%',color: AppColors.red),)
                ]
              ],
            )
          : Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              child: customText(
                AppTexts.notDetectedYet,
              ),
            ),
    );
  }
}

// 圖片錯誤時Widget
Widget _buildImageErrorWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'ic_broken_image.png',
        width: 36,
        height: 36,
        color: Colors.grey,
      ),
      Text(
        '圖片載入失敗',
        style: TextStyle(fontSize: 8),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
