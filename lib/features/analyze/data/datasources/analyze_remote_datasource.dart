import 'dart:io';
import 'package:dio/dio.dart';
import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/network/network_interface.dart';
import '../models/response/analyze_result/analyze_result_data.dart';

class AnalyzeRemoteDataSource {
  final NetworkInterface networkInterface;

  AnalyzeRemoteDataSource(this.networkInterface);

  /// 上傳照片進行分析
  Future<AnalyzeResultData> analyzeTeethImage(File imageFile) async {
    final formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(imageFile.path),
    });

    final response = await networkInterface.postFormData(
      url: ApiEndPoint.analyzeTeethImage,
      data: formData,
    );

    return ApiResponse<AnalyzeResultData>.fromJson(
      response.data,
          (json) => AnalyzeResultData.fromJson(json as Map<String, dynamic>),
    ).data;
  }

  /// 根據 ID 查詢分析結果
  Future<AnalyzeResultData> getAnalyzeResultById(String id) async {
    final response = await networkInterface.get(
      url: ApiEndPoint.getAnalyzeResultById(id),
    );

    return ApiResponse<AnalyzeResultData>.fromJson(
      response.data,
          (json) => AnalyzeResultData.fromJson(json as Map<String, dynamic>),
    ).data;
  }

  /// 取得分析圖檔 URL（實際請求不解析，只返回 URL）
  String getAnalyzeImageUrl(String relativePath) {
    return '${ApiEndPoint.domain}/analyze/image/teeth/$relativePath';
  }
}
