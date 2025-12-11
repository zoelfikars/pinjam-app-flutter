import 'package:dio/dio.dart';
import 'package:flutter_app/core/error/exceptions.dart';

Exception handleGoLangBodyResponse(Response response) {
  final json = response.data as Map<String, dynamic>;
  final status = json['status'] as String;
  final message = json['message'] as String;

  if (status == 'fail') {
    if (json.containsKey('data') && json['data'] is Map) {
      final validationErrors = Map<String, dynamic>.from(json['data'] as Map);
      return ClientException(
        message: message,
        validationErrors: validationErrors,
      );
    }
  }
  return ServerException(message: message);
}
