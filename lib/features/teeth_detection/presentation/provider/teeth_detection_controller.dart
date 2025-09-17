import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../../analyze/data/models/response/analyze_result/analyze_result_data.dart';
import '../../../teeth_record/data/models/response/brushing_record/brushing_record_data.dart';
import 'package:image/image.dart' as img;

part 'teeth_detection_controller.freezed.dart';

final teethDetectionControllerProvider =
StateNotifierProvider.autoDispose<TeethDetectionController, TeethDetectionState>(
      (ref) => TeethDetectionController(),
);

@freezed
class TeethDetectionState with _$TeethDetectionState {
  const factory TeethDetectionState({
    String? userId,
    File? tempImage,
    File? originalImage,
    @Default(0) int rotationAngle,
    BrushingRecordData? brushingRecord,
    AnalyzeResultData? analyzeResult,
  }) = _TeethDetectionState;
}

class TeethDetectionController extends StateNotifier<TeethDetectionState> {
  TeethDetectionController() : super(const TeethDetectionState());

  void initialize({
    required String userId,
    BrushingRecordData? record,
    AnalyzeResultData? analyze,
  }) {
    state = state.copyWith(
      userId: userId,
      brushingRecord: record,
      analyzeResult: analyze,
    );
  }

  void setTempImage(File? image) {
    state = state.copyWith(tempImage: image,
      originalImage: image,
      rotationAngle: 0,
      analyzeResult: null, );
  }

  void setBrushingRecord(BrushingRecordData record) {
    state = state.copyWith(brushingRecord: record);
  }

  /// 順時針旋轉圖片90度

  Future<void> rotateImage() async {
    if (state.originalImage == null) return;

    try {
      print('開始旋轉圖片...');

      // 計算新的旋轉次數（0, 1, 2, 3）
      final newRotationCount = (state.rotationAngle + 1) % 4;
      final degrees = newRotationCount * 90;

      // 讀取原始圖片
      final originalBytes = await state.originalImage!.readAsBytes();
      img.Image? originalImage = img.decodeImage(originalBytes);

      if (originalImage == null) {
        print('無法解碼圖片');
        return;
      }

      // 根據旋轉次數進行旋轉
      img.Image rotatedImage = originalImage;

      // 連續旋轉90度 * rotationCount次
      for (int i = 0; i < newRotationCount; i++) {
        rotatedImage = img.copyRotate(rotatedImage, angle: 90);
      }

      // 編碼為原始格式（通常是JPEG或PNG）
      List<int> rotatedBytes;
      final originalPath = state.originalImage!.path.toLowerCase();

      if (originalPath.endsWith('.png')) {
        rotatedBytes = img.encodePng(rotatedImage);
      } else {
        // 默認使用JPEG格式，品質設為85
        rotatedBytes = img.encodeJpg(rotatedImage, quality: 85);
      }

      // 創建新的臨時文件
      final tempDir = await getTemporaryDirectory();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final extension = originalPath.endsWith('.png') ? 'png' : 'jpg';
      final rotatedFile = File('${tempDir.path}/rotated_${timestamp}_$degrees.$extension');

      // 寫入旋轉後的圖片
      await rotatedFile.writeAsBytes(rotatedBytes);

      // 清理之前的臨時文件（如果存在且不是原始文件）
      if (state.tempImage != null && state.tempImage != state.originalImage) {
        try {
          if (await state.tempImage!.exists()) {
            await state.tempImage!.delete();
            print('已清理舊臨時文件');
          }
        } catch (e) {
          print('清理舊臨時文件時發生錯誤: $e');
        }
      }

      // 更新狀態
      state = state.copyWith(
        tempImage: rotatedFile,
        rotationAngle: newRotationCount,
      );

      print('圖片旋轉成功，角度: $degrees 度，文件: ${rotatedFile.path}');

    } catch (e) {
      print('旋轉圖片時發生錯誤: $e');
    }
  }

  void setAnalyzeResult(AnalyzeResultData result) {
    state = state.copyWith(analyzeResult: result);
  }

  /// 清理臨時文件
  Future<void> _cleanupTempFiles() async {
    if (state.tempImage != null && state.tempImage != state.originalImage) {
      try {
        if (await state.tempImage!.exists()) {
          await state.tempImage!.delete();
          print('已清理臨時旋轉文件: ${state.tempImage!.path}');
        }
      } catch (e) {
        print('清理臨時文件時發生錯誤: $e');
      }
    }
  }

  @override
  void dispose() {
    _cleanupTempFiles();
    super.dispose();
  }

  void clear() {
    // 清理臨時旋轉文件
    _cleanupTempFiles();
    state = const TeethDetectionState();
  }
}