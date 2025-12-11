
import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_app/features/auth/domain/entities/auth_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_usecase.freezed.dart';

@freezed
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String username,
    required String password,
  }) = _LoginParams;
}

class LoginUsecase implements Usecase<AuthEntity, LoginParams> {
  final AuthRepository repository;
  LoginUsecase(this.repository);

  @override
  Future<Either<Failure, AuthEntity>> call(LoginParams params) {
    return repository.login(params: params);
  }
}