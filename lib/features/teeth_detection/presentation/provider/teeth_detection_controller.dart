import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../analyze/data/models/response/analyze_result/analyze_result_data.dart';
import '../../../teeth_record/data/models/response/brushing_record/brushing_record_data.dart';

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
    state = state.copyWith(tempImage: image);
  }

  void setBrushingRecord(BrushingRecordData record) {
    state = state.copyWith(brushingRecord: record);
  }

  void setAnalyzeResult(AnalyzeResultData result) {
    state = state.copyWith(analyzeResult: result);
  }

  void clear() {
    state = const TeethDetectionState();
  }
}