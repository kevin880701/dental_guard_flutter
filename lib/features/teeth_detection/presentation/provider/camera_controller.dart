import 'dart:io';

import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

part 'camera_controller.freezed.dart';

final cameraControllerProvider = StateNotifierProvider.autoDispose<CameraControllerNotifier, CameraState>(
      (ref) => CameraControllerNotifier(),
);

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    CameraController? cameraController,
    @Default([]) List<CameraDescription> availableCameras,
    @Default(0) int currentCameraIndex,
    @Default(false) bool isInitialized,
    @Default(0.8) double cropWidthRatio,
    @Default(0.8) double cropHeightRatio,
    @Default(0.1) double offsetX,
    @Default(0.1) double offsetY,
  }) = _CameraState;
}

class CameraControllerNotifier extends StateNotifier<CameraState> {
  CameraControllerNotifier() : super(const CameraState());

  Future<void> initializeCameras() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) return;

    final controller = CameraController(cameras[0], ResolutionPreset.high);
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

    final newIndex = (state.currentCameraIndex + 1) % cameras.length;
    final newCamera = cameras[newIndex];

    await state.cameraController?.dispose();

    final newController = CameraController(newCamera, ResolutionPreset.high);
    await newController.initialize();
    await newController.setFlashMode(FlashMode.off);

    state = state.copyWith(
      cameraController: newController,
      currentCameraIndex: newIndex,
      isInitialized: true,
    );
  }

  void updateCropRatio({double? widthRatio, double? heightRatio}) {
    final newWidthRatio = widthRatio ?? state.cropWidthRatio;
    final newHeightRatio = heightRatio ?? state.cropHeightRatio;

    state = state.copyWith(
      cropWidthRatio: newWidthRatio,
      cropHeightRatio: newHeightRatio,
      offsetX: state.offsetX.clamp(0.0, 1.0 - newWidthRatio),
      offsetY: state.offsetY.clamp(0.0, 1.0 - newHeightRatio),
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
    final file = await controller.takePicture();
    final bytes = await File(file.path).readAsBytes();
    final image = img.decodeImage(bytes);

    if (image == null) return null;

    final width = image.width;
    final height = image.height;

    final cropWidth = (width * state.cropWidthRatio).toInt();
    final cropHeight = (height * (state.cropHeightRatio + 0.05)).toInt();
    final offsetX = (width * state.offsetX).toInt();
    final offsetY = (height * state.offsetY).toInt();

    final cropped = img.copyCrop(image, x: offsetX, y: offsetY, width: cropWidth, height: cropHeight);

    final dir = await getTemporaryDirectory();
    final path = join(dir.path, 'cropped_${DateTime.now().millisecondsSinceEpoch}.png');
    final croppedFile = File(path)..writeAsBytesSync(img.encodePng(cropped));

    return croppedFile.path;
  }

  @override
  void dispose() {
    state.cameraController?.dispose();
    super.dispose();
  }
}