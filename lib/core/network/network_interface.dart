import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/services.dart';
import '../constants/api_endpoints.dart';
import '../utils/app_log.dart';
import 'auth_interceptor.dart';

class NetworkInterface {
  static NetworkInterface? _instance;
  late final Dio dio;

  NetworkInterface._(this.dio);

  static NetworkInterface getInstance() {
    if (_instance == null) {
      throw Exception("NetworkInterface 尚未初始化，請先呼叫 createInstance()");
    }
    return _instance!;
  }

  // 創建實例並設置憑證
  static Future<NetworkInterface?> createInstance({
    String? certAssetPath,
  }) async {
    final dio = Dio(BaseOptions(baseUrl: ApiEndPoint.domain,
      validateStatus: (status) => status != null && status >= 200 && status <= 401,));

    dio.interceptors.add(AuthInterceptor());
    if (certAssetPath != null) {
      try {
        final certBytes =
            (await rootBundle.load(certAssetPath)).buffer.asUint8List();
        final context = SecurityContext(withTrustedRoots: true);
        context.setTrustedCertificatesBytes(certBytes);

        final httpClient = HttpClient(context: context)
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;

        (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
            () => httpClient;

        AppLog.i("已啟用憑證驗證：$certAssetPath");
      } catch (e) {
        AppLog.e("憑證初始化失敗: $e");
        rethrow;
      }
    } else {
      AppLog.i("未啟用憑證驗證");
    }

    _instance = NetworkInterface._(dio);
    return _instance;
  }

  Future<Response> download({
    required String url,
    required String savePath,
    Map<String, String>? extraHeaders,
  }) async {
    try {
      Options options = Options(
        responseType: ResponseType.bytes,
        headers: {
          ...?extraHeaders,
        },
      );

      Response response = await dio.get(url, options: options);

      File file = File(savePath);
      await file.writeAsBytes(response.data);

      return response;
    } catch (e) {
      throw Exception('下載失敗: $e');
    }
  }

  Future<Response> get({
    required String url,
    dynamic body,
    Map<String, dynamic>? query,
    String contentType = 'application/json',
    Map<String, String>? extraHeaders,
  }) async {
    try {
      Options options = Options(
        headers: {
          'Content-Type': contentType,
          ...?extraHeaders,
        },
      );

      _logRequest("GET", url: url, options: options, body: body, query: query);
      Response response = await dio.get(
        url,
        data: body,
        queryParameters: query,
        options: options,
      );
      _logResponse("GET", url, response);

      return response;
    } catch (e) {
      throw Exception('Failed to get data ： $e');
    }
  }

  Future<Response> patch({
    required String url,
    dynamic body,
    Map<String, dynamic>? query,
    String contentType = 'application/json',
    Map<String, String>? extraHeaders,
  }) async {
    try {
      Options options = Options(
        headers: {
          'Content-Type': contentType,
          ...?extraHeaders,
        },
      );

      _logRequest("PATCH", url: url, options: options, body: body, query: query);
      Response response = await dio.patch(
        url,
        data: body,
        queryParameters: query,
        options: options,
      );
      _logResponse("PATCH", url, response);

      return response;
    } catch (e) {
      throw Exception('Failed to patch data ： $e');
    }
  }

  Future<Response> post({
    required String url,
    dynamic body,
    Map<String, dynamic>? query,
    String contentType = 'application/json',
    Map<String, String>? extraHeaders,
  }) async {
    try {
      Options options = Options(
        headers: {
          'Content-Type': contentType,
          ...?extraHeaders,
        },
      );

      _logRequest("POST", url: url, options: options, body: body, query: query);
      Response response = await dio.post(
        url,
        data: body,
        queryParameters: query,
        options: options,
      );
      _logResponse("POST", url, response);

      return response;
    } catch (e) {
      throw Exception('Failed to post data ： $e');
    }
  }

  Future<Response> postFormData({
    required String url,
    required FormData data,
    Map<String, dynamic>? query,
    Map<String, String>? extraHeaders,
  }) async {
    try {
      final options = Options(
        headers: {
          'Content-Type': 'multipart/form-data',
          ...?extraHeaders,
        },
      );

      _logRequest("POST (FormData)", url: url, options: options, body: data, query: query);
      final response = await dio.post(
        url,
        data: data,
        queryParameters: query,
        options: options,
      );
      _logResponse("POST (FormData)", url, response);
      return response;
    } catch (e) {
      throw Exception('Failed to post form data: $e');
    }
  }

  Future<Response> delete({
    required String url,
    dynamic body,
    Map<String, dynamic>? query,
    Map<String, String>? extraHeaders,
  }) async {
    try {
      Options options = Options(
        headers: {
          ...?extraHeaders,
        },
      );

      _logRequest(
        "DELETE",
        url: url,
        options: options,
        body: body,
        query: query,
      );
      Response response = await dio.delete(
        url,
        data: body,
        queryParameters: query,
        options: options,
      );
      _logResponse("DELETE", url, response);

      return response;
    } catch (e) {
      throw Exception('Failed to delete data ： $e');
    }
  }

  Future<Response> put({
    required String url,
    dynamic body,
    Map<String, dynamic>? query,
    String contentType = 'application/json',
    Map<String, String>? extraHeaders,
  }) async {
    try {
      Options options = Options(
        headers: {
          'Content-Type': contentType,
          ...?extraHeaders,
        },
      );

      _logRequest("PUT", url: url, options: options, body: body, query: query);
      Response response = await dio.put(
        url,
        queryParameters: query,
        data: body,
        options: options,
      );
      _logResponse("PUT", url, response);

      return response;
    } catch (e) {
      throw Exception('Failed to put data ： $e');
    }
  }

  void _logRequest(
    String method, {
    required String url,
    Options? options,
    dynamic body,
    Map<String, dynamic>? query,
  }) {
    AppLog.v("--> START $method ${ApiEndPoint.domain + url}");
    AppLog.v("Headers: ${jsonEncode(options?.headers)}");
    if (body != null) {
      if (body is FormData) {
        AppLog.v("FormData Fields:");
        for (var field in body.fields) {
          AppLog.v("Field: ${field.key} = ${field.value}");
        }
        AppLog.v("FormData Files:");
        for (var file in body.files) {
          AppLog.v(
            "File: ${file.key} = ${file.value.filename} (size: ${file.value.length} bytes)",
          );
        }
      } else {
        AppLog.v("Body: ${jsonEncode(body)}");
      }
    } else {
      AppLog.v("No Body");
    }
    AppLog.v(query != null ? "Query: ${jsonEncode(query)}" : "No Query");
    AppLog.v("--> END $method ${ApiEndPoint.domain + url}");
  }

  void _logResponse(String method, String url, Response response) {
    AppLog.v("<-- START $method ${response.realUri}");
    AppLog.v("Status: ${response.statusCode}");
    AppLog.v("Response: ${jsonEncode(response.data)}");
    AppLog.v("<-- END $method ${ApiEndPoint.domain + url}");
  }
}
