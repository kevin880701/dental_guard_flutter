import 'dart:io';

import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/data/response/classroomList/ClassroomListResponse.dart';
import 'package:dental_guard_flutter/data/response/createTeethRecord/CreateTeethRecordResponse.dart';
import 'package:dental_guard_flutter/net/ApiManager.dart';
import 'package:dental_guard_flutter/provider/UserProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageDetectState {
  final File? originalImage;
  final AnalyzeTeethResponse? analyzeTeethResponse;

  ImageDetectState({
    this.originalImage,
    this.analyzeTeethResponse,
  });

  ImageDetectState copyWith({
    File? originalImage,
    AnalyzeTeethResponse? analyzeTeethResponse,
  }) {
    return ImageDetectState(
      originalImage: originalImage,
      analyzeTeethResponse: analyzeTeethResponse,
    );
  }
}

final imageDetectProvider =
    StateNotifierProvider.autoDispose<ImageDetectNotifier, ImageDetectState>(
        (ref) {
  return ImageDetectNotifier(ref);
});

class ImageDetectNotifier extends StateNotifier<ImageDetectState> {
  ImageDetectNotifier(this.ref) : super(ImageDetectState()) {
    apiManager = ApiManager(ref);
    token = ref.read(userProvider).loginResponse?.tokens.access ?? "";
  }

  final Ref ref;
  late final ApiManager apiManager;
  late String token = "";

  Future<void> updateImage(
      {File? originalImage, AnalyzeTeethResponse? analyzeTeethResponse}) async {
    state = state.copyWith(
      originalImage: originalImage ?? state.originalImage,
      analyzeTeethResponse: analyzeTeethResponse ?? state.analyzeTeethResponse,
    );
  }

  Future<void> clearImage() async {
    state = state.copyWith(
      originalImage: null,
      analyzeTeethResponse: null,
    );
  }

  Future<AnalyzeTeethResponse?> analyzeTeeth({
    required File originalImage,
  }) async {
    AnalyzeTeethResponse? response =
        await apiManager.analyzeTeeth(token, originalImage: originalImage);

    state = state.copyWith(
      originalImage: state.originalImage,
      analyzeTeethResponse: response,
    );
    return response;
  }

  Future<CreateTeethRecordResponse?> createTeethRecords({
    required int studentId,
    required String imagesPath,
    required String dentalPlaqueCount,
  }) async {
    CreateTeethRecordResponse? response = await apiManager.createTeethRecords(token,
        studentId: studentId,
        imagesPath: imagesPath,
        dentalPlaqueCount: dentalPlaqueCount);

    return response;
  }
}
