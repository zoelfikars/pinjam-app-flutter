// lib/features/auth/domain/usecases/get_authenticated_user.dart

import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_app/features/auth/domain/entities/auth_entity.dart';

class GetAuthenticatedUser implements NoParamsUsecase<AuthEntity> {
  final AuthRepository repository;
  GetAuthenticatedUser(this.repository);

  @override
  Future<Either<Failure, AuthEntity>> call() async {
    return repository.getUser();
  }
}