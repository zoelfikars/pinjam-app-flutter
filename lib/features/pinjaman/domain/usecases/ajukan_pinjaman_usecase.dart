import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/pinjaman/data/repositories/pinjaman_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ajukan_pinjaman_usecase.freezed.dart';

@freezed
abstract class AjukanPinjamanParams with _$AjukanPinjamanParams {
  const factory AjukanPinjamanParams({
    required String nik,
    required String noTelepon,
    required String alamat,
    required int jumlahPinjaman,
  }) = _AjukanPinjamanParams;
}

class AjukanPinjamanUsecase implements Usecase<String, AjukanPinjamanParams> {
  final PinjamanRepository repository;
  AjukanPinjamanUsecase(this.repository);
  @override
  Future<Either<Failure, String>> call(AjukanPinjamanParams params) async {
    return repository.ajukanPinjaman(params: params);
  }
}
