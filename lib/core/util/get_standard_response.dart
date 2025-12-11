import 'package:dio/dio.dart';
import 'package:flutter_app/core/model/standard_response_model.dart';

StandardResponseModel<T> getStandardResponse<T>(Response response) {
  T? nullMapper(dynamic json) => null;
  return StandardResponseModel<T>.fromJson(
    response.data as Map<String, dynamic>,
    nullMapper as T Function(dynamic),
  );
}
