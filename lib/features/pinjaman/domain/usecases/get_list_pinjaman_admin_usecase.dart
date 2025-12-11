import 'package:dartz/dartz.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/usecases/usecase.dart';
import 'package:flutter_app/features/pinjaman/data/repositories/pinjaman_repository.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';

class GetListPinjamanAdminUsecase
    implements NoParamsUsecase<List<PinjamanAdminEntity>> {
  final PinjamanRepository repository;

  GetListPinjamanAdminUsecase(this.repository);

  @override
  Future<Either<Failure, List<PinjamanAdminEntity>>> call() async {
    return repository.getListPinjamanAdmin();
  }
}
