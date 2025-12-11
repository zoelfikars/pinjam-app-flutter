import 'package:flutter_app/core/util/empty_value.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pinjaman_admin_model.freezed.dart';
part 'pinjaman_admin_model.g.dart';

@freezed
abstract class PinjamanAdminModel with _$PinjamanAdminModel {
  const factory PinjamanAdminModel({
    String? id,
    String? nik,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    String? alamat,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'no_telepon') String? noTelepon,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'jumlah_pinjaman') int? jumlahPinjaman,
    String? status,
    String? catatanAdmin,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'inspected_at') String? inspectedAt,
    InspectorModel? inspector,
    NasabahModel? nasabah,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _PinjamanAdminModel;

  factory PinjamanAdminModel.fromJson(Map<String, dynamic> json) =>
      _$PinjamanAdminModelFromJson(json);
}

extension PinjamanAdminModelToEntity on PinjamanAdminModel {
  PinjamanAdminEntity toEntity() => PinjamanAdminEntity(
    id: emptyValue(id),
    nik: emptyValue(nik),
    namaLengkap: emptyValue(namaLengkap),
    alamat: emptyValue(alamat),
    noTelepon: emptyValue(noTelepon),
    jumlahPinjaman: jumlahPinjaman ?? 0,
    status: emptyValue(status),
    catatanAdmin: emptyValue(catatanAdmin),
    inspectedAt: emptyValue(inspectedAt),
    inspectorId: emptyValue(inspector?.id),
    inspectorNamaLengkap: emptyValue(inspector?.namaLengkap),
    inspectorRole: emptyValue(inspector?.role),
    inspectorCreatedAt: emptyValue(inspector?.createdAt),
    inspectorUpdatedAt: emptyValue(inspector?.updatedAt),
    nasabahId: emptyValue(nasabah?.id),
    nasabahUsername: emptyValue(nasabah?.username),
    nasabahNamaLengkap: emptyValue(nasabah?.namaLengkap),
    nasabahRole: emptyValue(nasabah?.role),
    nasabahCreatedAt: emptyValue(nasabah?.createdAt),
    nasabahUpdatedAt: emptyValue(nasabah?.updatedAt),
    createdAt: emptyValue(createdAt),
    updatedAt: emptyValue(updatedAt),
  );
}

@freezed
abstract class NasabahModel with _$NasabahModel {
  const factory NasabahModel({
    String? id,
    String? username,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    String? role,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _NasabahModel;

  factory NasabahModel.fromJson(Map<String, dynamic> json) =>
      _$NasabahModelFromJson(json);
}

@freezed
abstract class InspectorModel with _$InspectorModel {
  const factory InspectorModel({
    String? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    String? role,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _InspectorModel;

  factory InspectorModel.fromJson(Map<String, dynamic> json) =>
      _$InspectorModelFromJson(json);
}
