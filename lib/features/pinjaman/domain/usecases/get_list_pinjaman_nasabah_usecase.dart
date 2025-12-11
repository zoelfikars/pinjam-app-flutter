import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/pinjaman/data/repositories/pinjaman_repository.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_nasabah_entity.dart';

class GetListPinjamanNasabahUsecase
    implements NoParamsUsecase<List<PinjamanNasabahEntity>> {
  final PinjamanRepository repository;

  GetListPinjamanNasabahUsecase(this.repository);

  @override
  Future<Either<Failure, List<PinjamanNasabahEntity>>> call() async {
    return repository.getListPinjamanNasabah();
  }
}
