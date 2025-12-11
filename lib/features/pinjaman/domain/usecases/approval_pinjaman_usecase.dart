import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/pinjaman/data/repositories/pinjaman_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_pinjaman_usecase.freezed.dart';
part 'approval_pinjaman_usecase.g.dart';

@freezed
abstract class UpdatePinjamanParams with _$UpdatePinjamanParams {
  const factory UpdatePinjamanParams({
    required String pinjamanId,
    required String status,
    String? catatanAdmin,
  }) = _UpdatePinjamanParams;

  factory UpdatePinjamanParams.fromJson(Map<String, dynamic> json) =>
      _$UpdatePinjamanParamsFromJson(json);
}

class UpdatePinjamanStatusUsecase
    implements Usecase<String, UpdatePinjamanParams> {
  final PinjamanRepository repository;

  UpdatePinjamanStatusUsecase(this.repository);

  @override
  Future<Either<Failure, String>> call(UpdatePinjamanParams params) async {
    return repository.updatePinjamanStatus(params);
  }
}
