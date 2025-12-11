import 'package:flutter_app/core/util/empty_value.dart';
import 'package:flutter_app/features/pinjaman/data/models/pinjaman_admin_model.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_nasabah_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinjaman_nasabah_model.freezed.dart';
part 'pinjaman_nasabah_model.g.dart';

@freezed
abstract class PinjamanNasabahModel with _$PinjamanNasabahModel {
  const factory PinjamanNasabahModel({
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
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _PinjamanNasabahModel;

  factory PinjamanNasabahModel.fromJson(Map<String, dynamic> json) =>
      _$PinjamanNasabahModelFromJson(json);
}

extension PinjamanNasabahModelToEntity on PinjamanNasabahModel {
  PinjamanNasabahEntity toEntity() {
    return PinjamanNasabahEntity(
      id: emptyValue(id),
      nik: emptyValue(nik),
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
      createdAt: emptyValue(createdAt),
      updatedAt: emptyValue(updatedAt),
    );
  }
}
