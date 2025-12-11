import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/auth/data/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_usecase.freezed.dart';

@freezed
abstract class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String username,
    required String password,
    required String passwordConfirmation,
    required String fullName,
  }) = _RegisterParams;
}

class RegisterUsecase implements Usecase<String, RegisterParams> {
  final AuthRepository repository;
  RegisterUsecase(this.repository);
  @override
  Future<Either<Failure, String>> call(RegisterParams params) async {
    final result = await repository.register(params: params);

    return result;
  }
}
