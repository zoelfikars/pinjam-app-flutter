import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'usecase.freezed.dart';

// ignore: avoid_types_as_parameter_names
abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// ignore: avoid_types_as_parameter_names
abstract class NoParamsUsecase<Type> {
  Future<Either<Failure, Type>> call();
}

@freezed
abstract class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;
}
