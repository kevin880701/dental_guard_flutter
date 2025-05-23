import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'result_code') required int resultCode,
    @JsonKey(name: 'data') required T data,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);
}

T? nullableFromJson<T>(
    Object? json,
    T Function(Map<String, dynamic>) fromJson,
    ) {
  if (json == null) return null;
  return fromJson(json as Map<String, dynamic>);
}
