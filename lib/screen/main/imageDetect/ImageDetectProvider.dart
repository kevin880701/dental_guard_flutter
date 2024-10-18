import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageDetectState {
  final File? originalImage;
  final File? detectResult;

  ImageDetectState({
    this.originalImage,
    this.detectResult,
  });

  ImageDetectState copyWith({
    File? originalImage,
    File? detectResult,
  }) {
    return ImageDetectState(
      originalImage: originalImage,
      detectResult: detectResult,
    );
  }
}

final imageDetectProvider = StateNotifierProvider.autoDispose<ImageDetectNotifier, ImageDetectState>((ref) {
  return ImageDetectNotifier(ref);
});

class ImageDetectNotifier extends StateNotifier<ImageDetectState> {
  ImageDetectNotifier(this.ref) : super(ImageDetectState()) {}

  final Ref ref;
  late String token = "";

  Future<void> updateImage({File? originalImage, File? detectResult}) async {
    state = state.copyWith(
      originalImage: originalImage ?? state.originalImage,
      detectResult: detectResult ?? state.detectResult,
    );
  }

  Future<void> clearImage() async {
    state = state.copyWith(
      originalImage: null,
      detectResult: null,
    );
  }
}
