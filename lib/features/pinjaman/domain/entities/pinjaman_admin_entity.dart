import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinjaman_admin_entity.freezed.dart';

@freezed
abstract class PinjamanAdminEntity with _$PinjamanAdminEntity {
  const factory PinjamanAdminEntity({
    required String id,
    required String nik,
    required String namaLengkap,
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
    required String nasabahId,
    required String nasabahUsername,
    required String nasabahNamaLengkap,
    required String nasabahRole,
    required String nasabahCreatedAt,
    required String nasabahUpdatedAt,
    required String createdAt,
    required String updatedAt,
  }) = _PinjamanAdminEntity;
}