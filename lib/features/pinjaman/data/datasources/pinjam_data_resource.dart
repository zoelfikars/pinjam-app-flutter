import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/app_url.dart';
import 'package:flutter_app/core/error/exceptions.dart';
import 'package:flutter_app/core/model/standard_response_model.dart';
import 'package:flutter_app/core/res/app_constant.dart';
import 'package:flutter_app/core/util/dio_exception_handler.dart';
import 'package:flutter_app/core/util/get_standard_response.dart';
import 'package:flutter_app/core/util/handle_golang_response.dart';
import 'package:flutter_app/features/pinjaman/data/models/pinjaman_admin_model.dart';
import 'package:flutter_app/features/pinjaman/data/models/pinjaman_nasabah_model.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/ajukan_pinjaman_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/approval_pinjaman_usecase.dart';

abstract class PinjamanRemoteDataSource {
  Future<String> ajukanPinjaman({required AjukanPinjamanParams params});
  Future<List<PinjamanNasabahModel>> getListPinjamanNasabah();
  Future<List<PinjamanAdminModel>> getListPinjamanAdmin();
  Future<String> updatePinjamanStatus(UpdatePinjamanParams params);
}

List<PinjamanAdminModel> listPinjamanAdminMapper(dynamic json) {
  final List dataList = json as List;
  return dataList
      .map((e) => PinjamanAdminModel.fromJson(e as Map<String, dynamic>))
      .toList();
}

class PinjamanRemoteDataSourceImpl implements PinjamanRemoteDataSource {
  final Dio dio;
  PinjamanRemoteDataSourceImpl(this.dio);
  List<PinjamanNasabahModel> listPinjamanNasabahMapper(dynamic json) {
    final List dataList = json as List;
    return dataList
        .map((e) => PinjamanNasabahModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<String> ajukanPinjaman({required AjukanPinjamanParams params}) async {
    try {
      final param = {
        'nik': params.nik,
        'no_telepon': params.noTelepon,
        'alamat': params.alamat,
        'jumlah_pinjaman': params.jumlahPinjaman.toInt(),
      };
      final response = await dio.post(
        AppUrl.ajukanPinjamanEndpoint,
        data: param,
      );
      if (!AppConstant.successStatusCodes.contains(response.statusCode)) {
        throw handleGoLangBodyResponse(response);
      }
      final responseModel = getStandardResponse<void>(response);
      return responseModel.message;
    } on DioException catch (e) {
      throw dioExceptionHandler(e, 'Gagal mengajukan pinjaman.');
    }
  }

  @override
  Future<List<PinjamanNasabahModel>> getListPinjamanNasabah() async {
    try {
      final response = await dio.get(AppUrl.nasabahPinjamanEndpoint);
      final responseModel =
          StandardResponseModel<List<PinjamanNasabahModel>>.fromJson(
            response.data as Map<String, dynamic>,
            listPinjamanNasabahMapper,
          );
      if (responseModel.status == 'fail') {
        handleGoLangBodyResponse(response);
      }
      if (responseModel.data == null) {
        throw ServerException(
          message: 'Data pinjaman kosong atau tidak valid.',
        );
      }
      return responseModel.data!;
    } on DioException catch (e) {
      throw dioExceptionHandler(e, 'Gagal mengajukan pinjaman.');
    }
  }

  @override
  Future<List<PinjamanAdminModel>> getListPinjamanAdmin() async {
    try {
      final response = await dio.get(AppUrl.daftarPinjamanEndpoint);
      final responseModel =
          StandardResponseModel<List<PinjamanAdminModel>>.fromJson(
            response.data as Map<String, dynamic>,
            listPinjamanAdminMapper,
          );
      if (responseModel.status == 'fail') {
        handleGoLangBodyResponse(response);
      }
      if (responseModel.data == null) {
        throw ServerException(
          message: 'Data pinjaman admin kosong atau tidak valid.',
        );
      }
      return responseModel.data!;
    } on DioException catch (e) {
      if (e.response != null) {
        handleGoLangBodyResponse(e.response!);
      }
      throw ServerException(
        message: e.message ?? 'Gagal mengambil daftar pinjaman admin.',
      );
    }
  }

  @override
  Future<String> updatePinjamanStatus(UpdatePinjamanParams params) async {
    try {
      final response = await dio.put(
        AppUrl.approvalPinjamanEndpoint.replaceAll('{id}', params.pinjamanId),
        data: {
          'status': params.status,
          if (params.catatanAdmin != null && params.catatanAdmin!.isNotEmpty)
            'catatan_admin': params.catatanAdmin,
        },
      );

      final responseModel = getStandardResponse<void>(response);

      if (responseModel.status == 'fail') {
        handleGoLangBodyResponse(response);
      }

      return responseModel.message;
    } on DioException catch (e) {
      if (e.response != null) {
        handleGoLangBodyResponse(e.response!);
      }
      throw ServerException(
        message: e.message ?? 'Gagal memperbarui status pinjaman.',
      );
    }
  }
}
