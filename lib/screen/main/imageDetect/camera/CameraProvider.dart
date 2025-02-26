import 'dart:io';
import 'package:camera/camera.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' show join;

class CameraState {
  final CameraController? cameraController;
  final List<CameraDescription> availableCameras;
  final int currentCameraIndex;
  final bool isInitialized;
  final double cropWidthRatio;
  final double cropHeightRatio;
  final double offsetX;
  final double offsetY;

  CameraState({
    this.cameraController,
    this.availableCameras = const [],
    this.currentCameraIndex = 0,
    this.isInitialized = false,
    this.cropWidthRatio = 0.7,
    this.cropHeightRatio = 0.3,
    this.offsetX = 0.15,
    this.offsetY = 0.5,
  });

  CameraState copyWith({
    CameraController? cameraController,
    List<CameraDescription>? availableCameras,
    int? currentCameraIndex,
    bool? isInitialized,
    double? cropWidthRatio,
    double? cropHeightRatio,
    double? offsetX,
    double? offsetY,
  }) {
    return CameraState(
      cameraController: cameraController ?? this.cameraController,
      availableCameras: availableCameras ?? this.availableCameras,
      currentCameraIndex: currentCameraIndex ?? this.currentCameraIndex,
      isInitialized: isInitialized ?? this.isInitialized,
      cropWidthRatio: cropWidthRatio ?? this.cropWidthRatio,
      cropHeightRatio: cropHeightRatio ?? this.cropHeightRatio,
      offsetX: offsetX ?? this.offsetX,
      offsetY: offsetY ?? this.offsetY,
    );
  }
}

final cameraProvider =
StateNotifierProvider.autoDispose<CameraNotifier, CameraState>((ref) {
  return CameraNotifier();
});

class CameraNotifier extends StateNotifier<CameraState> {
  CameraNotifier() : super(CameraState());

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) return;

    final firstCamera = cameras[0];
    final controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    await controller.initialize();
    await controller.setFlashMode(FlashMode.off);

    state = state.copyWith(
      cameraController: controller,
      availableCameras: cameras,
      currentCameraIndex: 0,
      isInitialized: true,
    );
  }

  Future<void> switchCamera() async {
    final cameras = state.availableCameras;
    if (cameras.isEmpty) return;

    // 計算新的鏡頭索引
    final newIndex = (state.currentCameraIndex + 1) % cameras.length;
    final newCamera = cameras[newIndex];

    // 釋放舊的 cameraController
    await state.cameraController?.dispose();

    // 建立新的 cameraController
    final newController = CameraController(
      newCamera,
      ResolutionPreset.high,
    );

    await newController.initialize();
    await newController.setFlashMode(FlashMode.off);

    // 更新狀態
    state = state.copyWith(
      cameraController: newController,
      currentCameraIndex: newIndex,
      isInitialized: true,
    );
  }

  void updateCropRatio({double? widthRatio, double? heightRatio}) {
    final newWidthRatio = widthRatio ?? state.cropWidthRatio;
    final newHeightRatio = heightRatio ?? state.cropHeightRatio;

    final maxOffsetX = 1.0 - newWidthRatio;
    final maxOffsetY = 1.0 - newHeightRatio;

    state = state.copyWith(
      cropWidthRatio: newWidthRatio,
      cropHeightRatio: newHeightRatio,
      offsetX: state.offsetX.clamp(0.0, maxOffsetX),
      offsetY: state.offsetY.clamp(0.0, maxOffsetY),
    );
  }

  void updateOffset({double? offsetX, double? offsetY}) {
    state = state.copyWith(
      offsetX: offsetX ?? state.offsetX,
      offsetY: offsetY ?? state.offsetY,
    );
  }

  Future<String?> takePicture() async {
    final controller = state.cameraController;
    if (controller == null || !controller.value.isInitialized) return null;

    await controller.setFlashMode(FlashMode.off);
    final imageFile = await controller.takePicture();
    final bytes = await imageFile.readAsBytes();
    img.Image? capturedImage = img.decodeImage(bytes);

    if (capturedImage != null) {
      final width = capturedImage.width;
      final height = capturedImage.height;

      final cropWidth = (width * state.cropWidthRatio).toInt();
      final cropHeight = (height * (state.cropHeightRatio + 0.05)).toInt();
      final offsetX = (width * state.offsetX).toInt();
      final offsetY = (height * state.offsetY).toInt();
      img.Image croppedImage = img.copyCrop(
        capturedImage,
        x: offsetX,
        y: offsetY,
        width: cropWidth,
        height: cropHeight,
      );

      final directory = await getTemporaryDirectory();
      final croppedPath =
      join(directory.path, 'cropped_${DateTime.now().millisecondsSinceEpoch}.png');
      final croppedFile = File(croppedPath)..writeAsBytesSync(img.encodePng(croppedImage));

      return croppedFile.path;
    }

    return null;
  }

  @override
  void dispose() {
    state.cameraController?.dispose();
    super.dispose();
  }
}
