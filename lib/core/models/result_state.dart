import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.loading() = _Loading<T>;
  const factory ResultState.success(T data) = _Success<T>;
  const factory ResultState.error(String message) = _Error<T>;
}