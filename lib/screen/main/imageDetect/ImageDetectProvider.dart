import 'dart:io';

import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
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
  ImageDetectNotifier(this.ref) : super(ImageDetectState()) {
    apiManager = ApiManager(ref);
  }

  final Ref ref;
  late final ApiManager apiManager;
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

  Future<AnalyzeTeethResponse?> analyzeTeeth({
    required File originalImage,
  }) async {
    final response = apiManager.analyzeTeeth(token, originalImage: originalImage);

  }
}
