import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/exceptions.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_app/features/auth/data/models/user_response_model.dart';
import 'package:flutter_app/features/auth/domain/entities/auth_entity.dart';
import 'package:flutter_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/register_usecase.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> register({required RegisterParams params});

  Future<Either<Failure, AuthEntity>> login({required LoginParams params});

  Future<Either<Failure, Unit>> logout();

  Future<Either<Failure, AuthEntity>> getUser();
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, String>> register({
    required RegisterParams params,
  }) async {
    try {
      final result = await remoteDataSource.register(params: params);
      return Right(result);
    } on ClientException catch (e) {
      return Left(
        Failure.clientFailure(
          message: e.message,
          validationErrors: e.validationErrors,
        ),
      );
    } on ServerException catch (e) {
      return Left(Failure.serverFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> login({
    required LoginParams params,
  }) async {
    try {
      final result = await remoteDataSource.login(params: params);
      await localDataSource.saveToken(result.token);
      final user = result.user;
      return Right(
        AuthEntity(
          id: user.id,
          username: user.username,
          fullName: user.fullName,
          role: user.role,
        ),
      );
    } on AuthException catch (e) {
      return Left(Failure.authFailure(message: e.message));
    } on ClientException catch (e) {
      return Left(Failure.clientFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.serverFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await remoteDataSource.logout();
      await localDataSource.deleteToken();
      return const Right(unit);
    } catch (_) {
      await localDataSource.deleteToken();
      return const Right(unit);
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> getUser() async {
    try {
      final token = await localDataSource.getToken();
      if (token == null || token.isEmpty) {
        return Left(
          const Failure.authFailure(message: 'Tidak ada token tersimpan.'),
        );
      }
      final result = await remoteDataSource.getUser();
      final user = result.toEntity();
      return Right(user);
    } on AuthException catch (e) {
      await localDataSource.deleteToken();
      return Left(Failure.authFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.serverFailure(message: e.message));
    } catch (e) {
      return Left(
        Failure.serverFailure(
          message: 'Terjadi kesalahan tidak terduga saat verifikasi sesi: $e',
        ),
      );
    }
  }
}
