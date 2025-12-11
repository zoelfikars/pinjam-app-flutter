import 'package:dio/dio.dart';
import 'package:flutter_app/features/auth/data/datasources/auth_local_data_source.dart';

class AuthInterceptor extends Interceptor {
  final AuthLocalDataSource authLocalDataSource;

  AuthInterceptor(this.authLocalDataSource);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final requiresAuth =
        !options.path.contains('/auth/') ||
        options.path.contains('/auth/user') ||
        options.path.contains('/auth/logout');
    if (requiresAuth) {
      final token = await authLocalDataSource.getToken();

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await authLocalDataSource.deleteToken();
    }
    super.onError(err, handler);
  }
}
