import 'dart:convert';
import 'dart:io';
import 'package:dental_guard_flutter/utils/AppLog.dart';
import 'package:dio/dio.dart';
import 'ApiEndPoint.dart';

enum HttpMethod { GET, POST, PUT, DELETE }

class NetworkInterface {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoint.domain));

  Future<Response> request({
    required String url,
    required HttpMethod method,
    dynamic body,
    String? userToken,
    Map<String, dynamic>? query,
    String contentType = 'application/json',
  }) async {
    try {
      Options options = Options(headers: {
        HttpHeaders.authorizationHeader: userToken ?? '',
        'Content-Type': contentType,
      });

      _logRequest(method, url: url, options: options, body: body, query: query);

      late Response response;
      switch (method) {
        case HttpMethod.GET:
          response = await _dio.get(url, queryParameters: query, data: body, options: options);
          break;
        case HttpMethod.POST:
          response = await _dio.post(url, data: body, queryParameters: query, options: options);
          break;
        case HttpMethod.PUT:
          response = await _dio.put(url, data: body, queryParameters: query, options: options);
          break;
        case HttpMethod.DELETE:
          response = await _dio.delete(url, data: body, queryParameters: query, options: options);
          break;
      }

      _logResponse(method, url, response);
      return response;
    } on DioException catch (e) {
      return _handleDioError(e, method, url);
    }
  }

  void _logRequest(HttpMethod method, {required String url, Options? options, dynamic body, Map<String, dynamic>? query}) {
    AppLog.v("--> START ${method.name} ${ApiEndPoint.domain + url}");
    AppLog.v("Headers: ${jsonEncode(options?.headers)}");
    if (body != null) {
      if (body is FormData) {
        AppLog.v("FormData Fields:");
        for (var field in body.fields) {
          AppLog.v("Field: ${field.key} = ${field.value}");
        }
        AppLog.v("FormData Files:");
        for (var file in body.files) {
          AppLog.v("File: ${file.key} = ${file.value.filename} (size: ${file.value.length} bytes)");
        }
      } else {
        AppLog.v("Body: ${jsonEncode(body)}");
      }
    } else {
      AppLog.v("No Body");
    }
    AppLog.v(query != null ? "Query: ${jsonEncode(query)}" : "No Query");
    AppLog.v("--> END ${method.name} ${ApiEndPoint.domain + url}");
  }

  void _logResponse(HttpMethod method, String url, Response response) {
    AppLog.v("<-- START ${method.name} ${response.realUri}");
    AppLog.v("Status: ${response.statusCode}");
    AppLog.v("Response: ${jsonEncode(response.data)}");
    AppLog.v("<-- END ${method.name} ${ApiEndPoint.domain + url}");
  }

  Response _handleDioError(DioException e, HttpMethod method, String url) {
    if (e.response != null) {
      AppLog.e("[${method.name}] Request to $url failed with status: ${e.response?.statusCode}");
      AppLog.e("Response: ${jsonEncode(e.response?.data)}");
      return e.response!;
    } else {
      AppLog.e("[${method.name}] Request to $url failed: ${e.toString()}");
      throw Exception('Network error');
    }
  }
}
