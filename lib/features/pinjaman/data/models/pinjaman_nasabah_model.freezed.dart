// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pinjaman_nasabah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PinjamanNasabahModel {

 String? get id; String? get nik;// ignore: invalid_annotation_target
@JsonKey(name: 'nama_lengkap') String? get namaLengkap; String? get alamat;// ignore: invalid_annotation_target
@JsonKey(name: 'no_telepon') String? get noTelepon;// ignore: invalid_annotation_target
@JsonKey(name: 'jumlah_pinjaman') int? get jumlahPinjaman; String? get status; String? get catatanAdmin;// ignore: invalid_annotation_target
@JsonKey(name: 'inspected_at') String? get inspectedAt; InspectorModel? get inspector;// ignore: invalid_annotation_target
@JsonKey(name: 'created_at') String? get createdAt;// ignore: invalid_annotation_target
@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of PinjamanNasabahModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinjamanNasabahModelCopyWith<PinjamanNasabahModel> get copyWith => _$PinjamanNasabahModelCopyWithImpl<PinjamanNasabahModel>(this as PinjamanNasabahModel, _$identity);

  /// Serializes this PinjamanNasabahModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanNasabahModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.jumlahPinjaman, jumlahPinjaman) || other.jumlahPinjaman == jumlahPinjaman)&&(identical(other.status, status) || other.status == status)&&(identical(other.catatanAdmin, catatanAdmin) || other.catatanAdmin == catatanAdmin)&&(identical(other.inspectedAt, inspectedAt) || other.inspectedAt == inspectedAt)&&(identical(other.inspector, inspector) || other.inspector == inspector)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nik,namaLengkap,alamat,noTelepon,jumlahPinjaman,status,catatanAdmin,inspectedAt,inspector,createdAt,updatedAt);

@override
String toString() {
  return 'PinjamanNasabahModel(id: $id, nik: $nik, namaLengkap: $namaLengkap, alamat: $alamat, noTelepon: $noTelepon, jumlahPinjaman: $jumlahPinjaman, status: $status, catatanAdmin: $catatanAdmin, inspectedAt: $inspectedAt, inspector: $inspector, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PinjamanNasabahModelCopyWith<$Res>  {
  factory $PinjamanNasabahModelCopyWith(PinjamanNasabahModel value, $Res Function(PinjamanNasabahModel) _then) = _$PinjamanNasabahModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? nik,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? alamat,@JsonKey(name: 'no_telepon') String? noTelepon,@JsonKey(name: 'jumlah_pinjaman') int? jumlahPinjaman, String? status, String? catatanAdmin,@JsonKey(name: 'inspected_at') String? inspectedAt, InspectorModel? inspector,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


$InspectorModelCopyWith<$Res>? get inspector;

}
/// @nodoc
class _$PinjamanNasabahModelCopyWithImpl<$Res>
    implements $PinjamanNasabahModelCopyWith<$Res> {
  _$PinjamanNasabahModelCopyWithImpl(this._self, this._then);

  final PinjamanNasabahModel _self;
  final $Res Function(PinjamanNasabahModel) _then;

/// Create a copy of PinjamanNasabahModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nik = freezed,Object? namaLengkap = freezed,Object? alamat = freezed,Object? noTelepon = freezed,Object? jumlahPinjaman = freezed,Object? status = freezed,Object? catatanAdmin = freezed,Object? inspectedAt = freezed,Object? inspector = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nik: freezed == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,alamat: freezed == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String?,noTelepon: freezed == noTelepon ? _self.noTelepon : noTelepon // ignore: cast_nullable_to_non_nullable
as String?,jumlahPinjaman: freezed == jumlahPinjaman ? _self.jumlahPinjaman : jumlahPinjaman // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,catatanAdmin: freezed == catatanAdmin ? _self.catatanAdmin : catatanAdmin // ignore: cast_nullable_to_non_nullable
as String?,inspectedAt: freezed == inspectedAt ? _self.inspectedAt : inspectedAt // ignore: cast_nullable_to_non_nullable
as String?,inspector: freezed == inspector ? _self.inspector : inspector // ignore: cast_nullable_to_non_nullable
as InspectorModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PinjamanNasabahModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectorModelCopyWith<$Res>? get inspector {
    if (_self.inspector == null) {
    return null;
  }

  return $InspectorModelCopyWith<$Res>(_self.inspector!, (value) {
    return _then(_self.copyWith(inspector: value));
  });
}
}


/// Adds pattern-matching-related methods to [PinjamanNasabahModel].
extension PinjamanNasabahModelPatterns on PinjamanNasabahModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PinjamanNasabahModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PinjamanNasabahModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PinjamanNasabahModel value)  $default,){
final _that = this;
switch (_that) {
case _PinjamanNasabahModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PinjamanNasabahModel value)?  $default,){
final _that = this;
switch (_that) {
case _PinjamanNasabahModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? nik, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? alamat, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'jumlah_pinjaman')  int? jumlahPinjaman,  String? status,  String? catatanAdmin, @JsonKey(name: 'inspected_at')  String? inspectedAt,  InspectorModel? inspector, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PinjamanNasabahModel() when $default != null:
return $default(_that.id,_that.nik,_that.namaLengkap,_that.alamat,_that.noTelepon,_that.jumlahPinjaman,_that.status,_that.catatanAdmin,_that.inspectedAt,_that.inspector,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? nik, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? alamat, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'jumlah_pinjaman')  int? jumlahPinjaman,  String? status,  String? catatanAdmin, @JsonKey(name: 'inspected_at')  String? inspectedAt,  InspectorModel? inspector, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PinjamanNasabahModel():
return $default(_that.id,_that.nik,_that.namaLengkap,_that.alamat,_that.noTelepon,_that.jumlahPinjaman,_that.status,_that.catatanAdmin,_that.inspectedAt,_that.inspector,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? nik, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? alamat, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'jumlah_pinjaman')  int? jumlahPinjaman,  String? status,  String? catatanAdmin, @JsonKey(name: 'inspected_at')  String? inspectedAt,  InspectorModel? inspector, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PinjamanNasabahModel() when $default != null:
return $default(_that.id,_that.nik,_that.namaLengkap,_that.alamat,_that.noTelepon,_that.jumlahPinjaman,_that.status,_that.catatanAdmin,_that.inspectedAt,_that.inspector,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PinjamanNasabahModel implements PinjamanNasabahModel {
  const _PinjamanNasabahModel({this.id, this.nik, @JsonKey(name: 'nama_lengkap') this.namaLengkap, this.alamat, @JsonKey(name: 'no_telepon') this.noTelepon, @JsonKey(name: 'jumlah_pinjaman') this.jumlahPinjaman, this.status, this.catatanAdmin, @JsonKey(name: 'inspected_at') this.inspectedAt, this.inspector, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _PinjamanNasabahModel.fromJson(Map<String, dynamic> json) => _$PinjamanNasabahModelFromJson(json);

@override final  String? id;
@override final  String? nik;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'nama_lengkap') final  String? namaLengkap;
@override final  String? alamat;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'no_telepon') final  String? noTelepon;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'jumlah_pinjaman') final  int? jumlahPinjaman;
@override final  String? status;
@override final  String? catatanAdmin;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'inspected_at') final  String? inspectedAt;
@override final  InspectorModel? inspector;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'created_at') final  String? createdAt;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of PinjamanNasabahModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PinjamanNasabahModelCopyWith<_PinjamanNasabahModel> get copyWith => __$PinjamanNasabahModelCopyWithImpl<_PinjamanNasabahModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PinjamanNasabahModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PinjamanNasabahModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.jumlahPinjaman, jumlahPinjaman) || other.jumlahPinjaman == jumlahPinjaman)&&(identical(other.status, status) || other.status == status)&&(identical(other.catatanAdmin, catatanAdmin) || other.catatanAdmin == catatanAdmin)&&(identical(other.inspectedAt, inspectedAt) || other.inspectedAt == inspectedAt)&&(identical(other.inspector, inspector) || other.inspector == inspector)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nik,namaLengkap,alamat,noTelepon,jumlahPinjaman,status,catatanAdmin,inspectedAt,inspector,createdAt,updatedAt);

@override
String toString() {
  return 'PinjamanNasabahModel(id: $id, nik: $nik, namaLengkap: $namaLengkap, alamat: $alamat, noTelepon: $noTelepon, jumlahPinjaman: $jumlahPinjaman, status: $status, catatanAdmin: $catatanAdmin, inspectedAt: $inspectedAt, inspector: $inspector, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PinjamanNasabahModelCopyWith<$Res> implements $PinjamanNasabahModelCopyWith<$Res> {
  factory _$PinjamanNasabahModelCopyWith(_PinjamanNasabahModel value, $Res Function(_PinjamanNasabahModel) _then) = __$PinjamanNasabahModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? nik,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? alamat,@JsonKey(name: 'no_telepon') String? noTelepon,@JsonKey(name: 'jumlah_pinjaman') int? jumlahPinjaman, String? status, String? catatanAdmin,@JsonKey(name: 'inspected_at') String? inspectedAt, InspectorModel? inspector,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


@override $InspectorModelCopyWith<$Res>? get inspector;

}
/// @nodoc
class __$PinjamanNasabahModelCopyWithImpl<$Res>
    implements _$PinjamanNasabahModelCopyWith<$Res> {
  __$PinjamanNasabahModelCopyWithImpl(this._self, this._then);

  final _PinjamanNasabahModel _self;
  final $Res Function(_PinjamanNasabahModel) _then;

/// Create a copy of PinjamanNasabahModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nik = freezed,Object? namaLengkap = freezed,Object? alamat = freezed,Object? noTelepon = freezed,Object? jumlahPinjaman = freezed,Object? status = freezed,Object? catatanAdmin = freezed,Object? inspectedAt = freezed,Object? inspector = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PinjamanNasabahModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nik: freezed == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,alamat: freezed == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String?,noTelepon: freezed == noTelepon ? _self.noTelepon : noTelepon // ignore: cast_nullable_to_non_nullable
as String?,jumlahPinjaman: freezed == jumlahPinjaman ? _self.jumlahPinjaman : jumlahPinjaman // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,catatanAdmin: freezed == catatanAdmin ? _self.catatanAdmin : catatanAdmin // ignore: cast_nullable_to_non_nullable
as String?,inspectedAt: freezed == inspectedAt ? _self.inspectedAt : inspectedAt // ignore: cast_nullable_to_non_nullable
as String?,inspector: freezed == inspector ? _self.inspector : inspector // ignore: cast_nullable_to_non_nullable
as InspectorModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PinjamanNasabahModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectorModelCopyWith<$Res>? get inspector {
    if (_self.inspector == null) {
    return null;
  }

  return $InspectorModelCopyWith<$Res>(_self.inspector!, (value) {
    return _then(_self.copyWith(inspector: value));
  });
}
}

// dart format on
