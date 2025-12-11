import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/auth/data/repositories/auth_repository.dart';

class LogoutUsecase implements NoParamsUsecase<Unit> {
  final AuthRepository repository;

  LogoutUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return repository.logout();
  }
}
