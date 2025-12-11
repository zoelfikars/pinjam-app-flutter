// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinjaman_admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PinjamanAdminModel _$PinjamanAdminModelFromJson(Map<String, dynamic> json) =>
    _PinjamanAdminModel(
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
      nasabah: json['nasabah'] == null
          ? null
          : NasabahModel.fromJson(json['nasabah'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$PinjamanAdminModelToJson(_PinjamanAdminModel instance) =>
    <String, dynamic>{
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
      'nasabah': instance.nasabah,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_NasabahModel _$NasabahModelFromJson(Map<String, dynamic> json) =>
    _NasabahModel(
      id: json['id'] as String?,
      username: json['username'] as String?,
      namaLengkap: json['nama_lengkap'] as String?,
      role: json['role'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$NasabahModelToJson(_NasabahModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'nama_lengkap': instance.namaLengkap,
      'role': instance.role,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_InspectorModel _$InspectorModelFromJson(Map<String, dynamic> json) =>
    _InspectorModel(
      id: json['id'] as String?,
      namaLengkap: json['nama_lengkap'] as String?,
      role: json['role'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$InspectorModelToJson(_InspectorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_lengkap': instance.namaLengkap,
      'role': instance.role,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
