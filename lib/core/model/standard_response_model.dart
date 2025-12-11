import 'package:flutter/material.dart';

class StandardResponseModel<T> {
  final String status;
  final String message;
  final T? data;
  StandardResponseModel({
    required this.status,
    required this.message,
    this.data,
  });
  factory StandardResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) dataMapper,
  ) {
    final status = json['status'] as String;
    final message = json['message'] as String;
    T? dataValue;
    if (status == 'success' &&
        json.containsKey('data') &&
        json['data'] != null) {
      try {
        dataValue = dataMapper(json['data']);
      } catch (e) {
        debugPrint('Error mapping data ke tipe $T: $e');
      }
    }
    return StandardResponseModel<T>(
      status: status,
      message: message,
      data: dataValue,
    );
  }
  factory StandardResponseModel.fromJsonError(Map<String, dynamic> json) {
    return StandardResponseModel<T>(
      status: json['status'] as String,
      message: json['message'] as String,
    );
  }
}
