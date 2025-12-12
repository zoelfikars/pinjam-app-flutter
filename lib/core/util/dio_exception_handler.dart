import 'package:dio/dio.dart';
import 'package:flutter_app/core/error/exceptions.dart';
import 'package:flutter_app/core/util/handle_golang_response.dart';

Exception dioExceptionHandler(DioException e, String defaultMessage) {
  if (e.response != null) {
    return handleGoLangBodyResponse(e.response!);
  }
  return ServerException(message: e.response?.data['message'] ?? defaultMessage);
}
