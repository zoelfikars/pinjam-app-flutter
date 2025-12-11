import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const Failure._();

  const factory Failure.serverFailure({required String message}) =
      _ServerFailure;

  const factory Failure.clientFailure({
    required String message,

    Map<String, dynamic>? validationErrors,
  }) = _ClientFailure;

  const factory Failure.authFailure({required String message}) = _AuthFailure;

  const factory Failure.cacheFailure({required String message}) = _CacheFailure;
}
