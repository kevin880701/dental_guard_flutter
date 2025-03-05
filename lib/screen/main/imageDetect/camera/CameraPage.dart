import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectProvider.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/camera/CameraProvider.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CameraPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cameraState = ref.watch(cameraProvider);
    final cameraNotifier = ref.read(cameraProvider.notifier);
    final imageDetectNotifier = ref.read(imageDetectProvider.notifier);

    final showSizeSliders = useState(false);
    final showOffsetSliders = useState(false);
    final countdown = useState<int?>(null);
    final player = AudioPlayer();

    useEffect(() {
      cameraNotifier.initializeCamera();
      return () => cameraNotifier.dispose();
    }, []);

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: cameraState.isInitialized && cameraState.cameraController != null
            ? Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              padding:
              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  assetImage(AppImages.backIcon,
                      width: 24,
                      height: 24,
                      color: AppColors.primaryBlack, onTap: () {
                        AutoRouter.of(context).popForced();
                      }),
                  ElevatedButton(
                    onPressed: () {
                      showSizeSliders.value = !showSizeSliders.value;
                      showOffsetSliders.value = false; // 互斥開關
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: showSizeSliders.value
                          ? Colors.grey[700]
                          : Colors.grey[300],
                      foregroundColor: showSizeSliders.value
                          ? Colors.white
                          : AppColors.primaryBlack, // 設定文字顏色為白色
                    ),
                    child: Text("調整尺寸"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showOffsetSliders.value =
                      !showOffsetSliders.value;
                      showSizeSliders.value = false; // 互斥開關
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: showOffsetSliders.value
                          ? Colors.grey[700]
                          : Colors.grey[300],
                      foregroundColor: showOffsetSliders.value
                          ? Colors.white
                          : AppColors.primaryBlack, // 設定文字顏色為白色
                    ),
                    child: Text("調整位置"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: LayoutBuilder(builder: (context, contrain) {
                return Stack(
                  children: [
                    CameraPreview(cameraState.cameraController!),
                    Positioned(
                      top: 50, // 距離頂部 50px
                      right: 20, // 距離右側 20px
                      child: AnimatedOpacity(
                        opacity: countdown.value != null ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 300),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            countdown.value?.toString() ?? '',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFFD533),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // 📦 裁切區域框線
                    Positioned(
                      left: cameraState.cameraController!.value
                          .aspectRatio >
                          contrain.maxHeight / contrain.maxWidth
                          ? (contrain.maxHeight /
                          cameraState.cameraController!.value
                              .aspectRatio) *
                          cameraState.offsetX
                          : contrain.maxWidth * cameraState.offsetX,
                      top: cameraState.cameraController!.value
                          .aspectRatio >
                          contrain.maxHeight / contrain.maxWidth
                          ? contrain.maxHeight * cameraState.offsetY
                          : (contrain.maxWidth *
                          cameraState.cameraController!.value
                              .aspectRatio) *
                          cameraState.offsetY,
                      child: Container(
                        width: cameraState.cameraController!.value
                            .aspectRatio >
                            contrain.maxHeight / contrain.maxWidth
                            ? (contrain.maxHeight /
                            cameraState.cameraController!
                                .value.aspectRatio) *
                            cameraState.cropWidthRatio
                            : contrain.maxWidth *
                            cameraState.cropWidthRatio,
                        height: cameraState.cameraController!.value
                            .aspectRatio >
                            contrain.maxHeight / contrain.maxWidth
                            ? contrain.maxHeight *
                            cameraState.cropHeightRatio
                            : (contrain.maxWidth *
                            cameraState.cameraController!
                                .value.aspectRatio) *
                            cameraState.cropHeightRatio,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white, width: 3),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 12,
                      top: 12,
                      child: FloatingActionButton(
                        onPressed: () async {
                          cameraNotifier.switchCamera();
                        },
                        child: Icon(Icons.cameraswitch),
                      ),
                    )
                  ],
                );
              }),
            ),

            // 📸 拍照按鈕 (當 Slider 顯示時隱藏)
            if (!showSizeSliders.value && !showOffsetSliders.value)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 24,),
                    FloatingActionButton(
                      onPressed: () async {
                        final path =
                        await cameraNotifier.takePicture();
                        if (path != null) {
                          imageDetectNotifier
                              .updateImage(originalImage: File(path))
                              .then((_) {
                            AutoRouter.of(context).popForced();
                          });
                        }
                      },
                      child: Icon(Icons.camera_alt),
                    ),
                    FloatingActionButton(
                      onPressed: () async {
                        countdown.value = 3; // 開始倒數 3 秒

                        for (int i = 2; i >= 0; i--) {
                          await player.play(AssetSource('sounds/countdown_timer.mp3'));
                          await Future.delayed(Duration(seconds: 1));
                          countdown.value = i;
                        }

                        // 倒數結束，執行拍照
                        final path =
                        await cameraNotifier.takePicture();
                        if (path != null) {
                          imageDetectNotifier
                              .updateImage(originalImage: File(path))
                              .then((_) {
                            AutoRouter.of(context).popForced();
                          });
                        }

                        countdown.value = null; // 重置倒數狀態
                      },
                      child: countdown.value == null
                          ? Icon(Icons.timer) // 顯示計時按鈕
                          : Text(countdown.value.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

            // 🎚️ 顯示尺寸調整 Slider
            if (showSizeSliders.value)
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Text(
                        "寬度占比: ${(cameraState.cropWidthRatio * 100).toStringAsFixed(0)}%"),
                    Slider(
                      value: cameraState.cropWidthRatio,
                      min: 0.1,
                      max: 1.0,
                      onChanged: (value) => cameraNotifier
                          .updateCropRatio(widthRatio: value),
                    ),
                    Text(
                        "高度占比: ${(cameraState.cropHeightRatio * 100).toStringAsFixed(0)}%"),
                    Slider(
                      value: cameraState.cropHeightRatio,
                      min: 0.1,
                      max: 1.0,
                      onChanged: (value) => cameraNotifier
                          .updateCropRatio(heightRatio: value),
                    ),
                  ],
                ),
              ),

            // 🎚️ 顯示 XY 偏移調整 Slider
            if (showOffsetSliders.value)
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Text(
                        "X 偏移: ${(cameraState.offsetX * 100).toStringAsFixed(0)}%"),
                    Slider(
                      value: cameraState.offsetX.clamp(
                          0.0, 1.0 - cameraState.cropWidthRatio),
                      min: 0.0,
                      max: 1.0 - cameraState.cropWidthRatio,
                      onChanged: (value) =>
                          cameraNotifier.updateOffset(offsetX: value),
                    ),
                    Text(
                        "Y 偏移: ${(cameraState.offsetY * 100).toStringAsFixed(0)}%"),
                    Slider(
                      value: cameraState.offsetY.clamp(
                          0.0, 1.0 - cameraState.cropHeightRatio),
                      min: 0.0,
                      max: 1.0 - cameraState.cropHeightRatio,
                      onChanged: (value) =>
                          cameraNotifier.updateOffset(offsetY: value),
                    ),
                  ],
                ),
              ),
          ],
        )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
