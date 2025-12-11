// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinjaman_nasabah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PinjamanNasabahModel _$PinjamanNasabahModelFromJson(
  Map<String, dynamic> json,
) => _PinjamanNasabahModel(
  id: json['id'] as String?,
  nik: json['nik'] as String?,
  namaLengkap: json['nama_lengkap'] as String?,
  alamat: json['alamat'] as String?,
  noTelepon: json['no_telepon'] as String?,
  jumlahPinjaman: (json['jumlah_pinjaman'] as num?)?.toInt(),
  status: json['status'] as String?,
  catatanAdmin: json['catatanAdmin'] as String?,
  inspectedAt: json['inspected_at'] as String?,
  inspector: json['inspector'] == null
      ? null
      : InspectorModel.fromJson(json['inspector'] as Map<String, dynamic>),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$PinjamanNasabahModelToJson(
  _PinjamanNasabahModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'nik': instance.nik,
  'nama_lengkap': instance.namaLengkap,
  'alamat': instance.alamat,
  'no_telepon': instance.noTelepon,
  'jumlah_pinjaman': instance.jumlahPinjaman,
  'status': instance.status,
  'catatanAdmin': instance.catatanAdmin,
  'inspected_at': instance.inspectedAt,
  'inspector': instance.inspector,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
