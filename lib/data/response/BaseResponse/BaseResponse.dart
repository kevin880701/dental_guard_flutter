import 'package:freezed_annotation/freezed_annotation.dart';

part 'BaseResponse.freezed.dart';
part 'BaseResponse.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({
    @JsonKey(name: 'returnCode') required int returnCode,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required T data,
  }) = _BaseResponse<T>;

  factory BaseResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) => _$BaseResponseFromJson(json, fromJsonT);
}
