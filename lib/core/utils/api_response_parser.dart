
import '../models/api_response.dart';
import 'app_toast.dart';

Future<T> parseApiResponse<T>(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT, {
      bool showToastOnError = true,
      bool showToastOnSuccess = false,
    }) async {
  try {
    final apiResponse = ApiResponse<T>.fromJson(json, fromJsonT);

    if (apiResponse.resultCode != 0) {
      if (showToastOnError) {
        AppToast.showToast(
          message: apiResponse.message,
          type: ToastType.DEFAULT,
          duration: const Duration(seconds: 3),
          alignment: ToastAlignment.bottom,
        );
      }
      throw Exception("API Error: ${apiResponse.message}");
    }

    if (showToastOnSuccess) {
      AppToast.showToast(
        message: apiResponse.message,
        type: ToastType.SUCCESS,
        duration: const Duration(seconds: 2),
        alignment: ToastAlignment.bottom,
      );
    }

    return apiResponse.data;
  } catch (e, stackTrace) {
    if (showToastOnError) {
      AppToast.showToast(
        message: "伺服器回傳資料異常",
        type: ToastType.ERROR,
        duration: const Duration(seconds: 3),
        alignment: ToastAlignment.bottom,
      );
    }
    throw Exception("API 格式解析失敗：$e");
  }
}
