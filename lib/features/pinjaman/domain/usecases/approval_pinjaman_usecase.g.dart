// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_pinjaman_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePinjamanParams _$UpdatePinjamanParamsFromJson(
  Map<String, dynamic> json,
) => _UpdatePinjamanParams(
  pinjamanId: json['pinjamanId'] as String,
  status: json['status'] as String,
  catatanAdmin: json['catatanAdmin'] as String?,
);

Map<String, dynamic> _$UpdatePinjamanParamsToJson(
  _UpdatePinjamanParams instance,
) => <String, dynamic>{
  'pinjamanId': instance.pinjamanId,
  'status': instance.status,
  'catatanAdmin': instance.catatanAdmin,
};
