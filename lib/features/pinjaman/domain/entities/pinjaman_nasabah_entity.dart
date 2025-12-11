import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinjaman_nasabah_entity.freezed.dart';

@freezed
abstract class PinjamanNasabahEntity with _$PinjamanNasabahEntity {
  const factory PinjamanNasabahEntity({
    required String id,
    required String nik,
    required String alamat,
    required String noTelepon,
    required int jumlahPinjaman,
    required String status,
    required String catatanAdmin,
    required String inspectedAt,
    required String inspectorId,
    required String inspectorNamaLengkap,
    required String inspectorRole,
    required String inspectorCreatedAt,
    required String inspectorUpdatedAt,
    required String createdAt,
    required String updatedAt,
  }) = _PinjamanNasabahEntity;
}