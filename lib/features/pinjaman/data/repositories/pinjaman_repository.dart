import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/exceptions.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/features/pinjaman/data/datasources/pinjam_data_resource.dart';
import 'package:flutter_app/features/pinjaman/data/models/pinjaman_admin_model.dart';
import 'package:flutter_app/features/pinjaman/data/models/pinjaman_nasabah_model.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_nasabah_entity.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/ajukan_pinjaman_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/approval_pinjaman_usecase.dart';

abstract class PinjamanRepository {
  Future<Either<Failure, String>> ajukanPinjaman({
    required AjukanPinjamanParams params,
  });
  Future<Either<Failure, List<PinjamanNasabahEntity>>> getListPinjamanNasabah();
  Future<Either<Failure, List<PinjamanAdminEntity>>> getListPinjamanAdmin();
  Future<Either<Failure, String>> updatePinjamanStatus(
    UpdatePinjamanParams params,
  );
}

class PinjamanRepositoryImpl implements PinjamanRepository {
  final PinjamanRemoteDataSource remoteDataSource;

  PinjamanRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, String>> ajukanPinjaman({
    required AjukanPinjamanParams params,
  }) async {
    try {
      final result = await remoteDataSource.ajukanPinjaman(params: params);
      return Right(result);
    } on ClientException catch (e) {
      return Left(
        Failure.clientFailure(
          message: e.message,
          validationErrors: e.validationErrors,
        ),
      );
    } on AuthException catch (e) {
      return Left(Failure.authFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.serverFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<PinjamanNasabahEntity>>>
  getListPinjamanNasabah() async {
    try {
      final result = await remoteDataSource.getListPinjamanNasabah();
      if (result.isEmpty) {
        throw EmptyException(message: 'Data pinjaman kosong atau tidak valid.');
      }
      return Right(result.map((e) => e.toEntity()).toList());
    } on ClientException catch (e) {
      return Left(
        Failure.clientFailure(
          message: e.message,
          validationErrors: e.validationErrors,
        ),
      );
    } on AuthException catch (e) {
      return Left(Failure.authFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.serverFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<PinjamanAdminEntity>>>
  getListPinjamanAdmin() async {
    try {
      final models = await remoteDataSource.getListPinjamanAdmin();
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } on AuthException catch (e) {
      return Left(Failure.authFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.serverFailure(message: e.message));
    } catch (e) {
      return Left(
        Failure.serverFailure(message: 'Terjadi kesalahan tidak terduga: $e'),
      );
    }
  }

  @override
  Future<Either<Failure, String>> updatePinjamanStatus(
    UpdatePinjamanParams params,
  ) async {
    try {
      final message = await remoteDataSource.updatePinjamanStatus(params);
      return Right(message);
    } on AuthException catch (e) {
      return Left(Failure.authFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.serverFailure(message: e.message));
    } on ClientException catch (e) {
      return Left(
        Failure.clientFailure(
          message: e.message,
          validationErrors: e.validationErrors,
        ),
      );
    } catch (e) {
      return Left(
        Failure.serverFailure(message: 'Terjadi kesalahan tidak terduga: $e'),
      );
    }
  }
}
