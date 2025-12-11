import 'package:dio/dio.dart';
import 'package:flutter_app/core/config/app_url.dart';
import 'package:flutter_app/core/model/standard_response_model.dart';
import 'package:flutter_app/core/res/app_constant.dart';
import 'package:flutter_app/core/util/dio_exception_handler.dart';
import 'package:flutter_app/core/util/get_standard_response.dart';
import 'package:flutter_app/core/util/handle_golang_response.dart';
import 'package:flutter_app/features/auth/data/models/login_response_model.dart';
import 'package:flutter_app/features/auth/data/models/user_response_model.dart';
import 'package:flutter_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/register_usecase.dart';

abstract class AuthRemoteDataSource {
  Future<String> register({required RegisterParams params});
  Future<LoginResponseModel> login({required LoginParams params});
  Future<String> logout();
  Future<UserResponseModel> getUser();
}

UserResponseModel userMapper(dynamic json) {
  return UserResponseModel.fromJson(json as Map<String, dynamic>);
}

Object? emptyMapper(dynamic json) => null;

LoginResponseModel loginMapper(dynamic json) {
  return LoginResponseModel.fromJson(json as Map<String, dynamic>);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<String> register({required RegisterParams params}) async {
    try {
      final response = await dio.post(
        AppUrl.registerEndpoint,
        data: {
          'username': params.username,
          'password': params.password,
          'password_confirmation': params.passwordConfirmation,
          'nama_lengkap': params.fullName,
        },
      );
      if (!AppConstant.successStatusCodes.contains(response.statusCode)) {
        throw handleGoLangBodyResponse(response);
      }
      final responseModel = getStandardResponse<void>(response);

      return responseModel.message;
    } on DioException catch (e) {
      throw dioExceptionHandler(e, 'Gagal registrasi.');
    }
  }

  @override
  Future<LoginResponseModel> login({required LoginParams params}) async {
    try {
      final response = await dio.post(
        AppUrl.loginEndpoint,
        data: {'username': params.username, 'password': params.password},
      );
      final responseModel = StandardResponseModel<LoginResponseModel>.fromJson(
        response.data as Map<String, dynamic>,
        loginMapper,
      );
      if (responseModel.status == 'success' && responseModel.data != null) {
        return responseModel.data!;
      }
      throw handleGoLangBodyResponse(response);
    } on DioException catch (e) {
      throw dioExceptionHandler(e, 'Gagal login.');
    }
  }

  @override
  Future<String> logout() async {
    try {
      final response = await dio.post(AppUrl.logoutEndpoint);
      if (response.statusCode != 200) {
        throw handleGoLangBodyResponse(response);
      }
      final responseModel = getStandardResponse<void>(response);

      return responseModel.message;
    } on DioException catch (e) {
      throw dioExceptionHandler(e, 'Gagal logout.');
    }
  }

  @override
  Future<UserResponseModel> getUser() async {
    try {
      final response = await dio.get(AppUrl.userEndpoint);
      final responseModel = StandardResponseModel<UserResponseModel>.fromJson(
        response.data as Map<String, dynamic>,
        userMapper,
      );
      if (responseModel.status == 'success' && responseModel.data != null) {
        return responseModel.data!;
      }
      throw handleGoLangBodyResponse(response);
    } on DioException catch (e) {
      throw dioExceptionHandler(e, 'Gagal mendapatkan data user.');
    }
  }
}
