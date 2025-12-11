// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pinjaman_admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PinjamanAdminModel {

 String? get id; String? get nik;// ignore: invalid_annotation_target
@JsonKey(name: 'nama_lengkap') String? get namaLengkap; String? get alamat;// ignore: invalid_annotation_target
@JsonKey(name: 'no_telepon') String? get noTelepon;// ignore: invalid_annotation_target
@JsonKey(name: 'jumlah_pinjaman') int? get jumlahPinjaman; String? get status; String? get catatanAdmin;// ignore: invalid_annotation_target
@JsonKey(name: 'inspected_at') String? get inspectedAt; InspectorModel? get inspector; NasabahModel? get nasabah;// ignore: invalid_annotation_target
@JsonKey(name: 'created_at') String? get createdAt;// ignore: invalid_annotation_target
@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of PinjamanAdminModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinjamanAdminModelCopyWith<PinjamanAdminModel> get copyWith => _$PinjamanAdminModelCopyWithImpl<PinjamanAdminModel>(this as PinjamanAdminModel, _$identity);

  /// Serializes this PinjamanAdminModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanAdminModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.jumlahPinjaman, jumlahPinjaman) || other.jumlahPinjaman == jumlahPinjaman)&&(identical(other.status, status) || other.status == status)&&(identical(other.catatanAdmin, catatanAdmin) || other.catatanAdmin == catatanAdmin)&&(identical(other.inspectedAt, inspectedAt) || other.inspectedAt == inspectedAt)&&(identical(other.inspector, inspector) || other.inspector == inspector)&&(identical(other.nasabah, nasabah) || other.nasabah == nasabah)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nik,namaLengkap,alamat,noTelepon,jumlahPinjaman,status,catatanAdmin,inspectedAt,inspector,nasabah,createdAt,updatedAt);

@override
String toString() {
  return 'PinjamanAdminModel(id: $id, nik: $nik, namaLengkap: $namaLengkap, alamat: $alamat, noTelepon: $noTelepon, jumlahPinjaman: $jumlahPinjaman, status: $status, catatanAdmin: $catatanAdmin, inspectedAt: $inspectedAt, inspector: $inspector, nasabah: $nasabah, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PinjamanAdminModelCopyWith<$Res>  {
  factory $PinjamanAdminModelCopyWith(PinjamanAdminModel value, $Res Function(PinjamanAdminModel) _then) = _$PinjamanAdminModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? nik,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? alamat,@JsonKey(name: 'no_telepon') String? noTelepon,@JsonKey(name: 'jumlah_pinjaman') int? jumlahPinjaman, String? status, String? catatanAdmin,@JsonKey(name: 'inspected_at') String? inspectedAt, InspectorModel? inspector, NasabahModel? nasabah,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


$InspectorModelCopyWith<$Res>? get inspector;$NasabahModelCopyWith<$Res>? get nasabah;

}
/// @nodoc
class _$PinjamanAdminModelCopyWithImpl<$Res>
    implements $PinjamanAdminModelCopyWith<$Res> {
  _$PinjamanAdminModelCopyWithImpl(this._self, this._then);

  final PinjamanAdminModel _self;
  final $Res Function(PinjamanAdminModel) _then;

/// Create a copy of PinjamanAdminModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nik = freezed,Object? namaLengkap = freezed,Object? alamat = freezed,Object? noTelepon = freezed,Object? jumlahPinjaman = freezed,Object? status = freezed,Object? catatanAdmin = freezed,Object? inspectedAt = freezed,Object? inspector = freezed,Object? nasabah = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
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
as InspectorModel?,nasabah: freezed == nasabah ? _self.nasabah : nasabah // ignore: cast_nullable_to_non_nullable
as NasabahModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PinjamanAdminModel
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
}/// Create a copy of PinjamanAdminModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NasabahModelCopyWith<$Res>? get nasabah {
    if (_self.nasabah == null) {
    return null;
  }

  return $NasabahModelCopyWith<$Res>(_self.nasabah!, (value) {
    return _then(_self.copyWith(nasabah: value));
  });
}
}


/// Adds pattern-matching-related methods to [PinjamanAdminModel].
extension PinjamanAdminModelPatterns on PinjamanAdminModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PinjamanAdminModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PinjamanAdminModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PinjamanAdminModel value)  $default,){
final _that = this;
switch (_that) {
case _PinjamanAdminModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PinjamanAdminModel value)?  $default,){
final _that = this;
switch (_that) {
case _PinjamanAdminModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? nik, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? alamat, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'jumlah_pinjaman')  int? jumlahPinjaman,  String? status,  String? catatanAdmin, @JsonKey(name: 'inspected_at')  String? inspectedAt,  InspectorModel? inspector,  NasabahModel? nasabah, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PinjamanAdminModel() when $default != null:
return $default(_that.id,_that.nik,_that.namaLengkap,_that.alamat,_that.noTelepon,_that.jumlahPinjaman,_that.status,_that.catatanAdmin,_that.inspectedAt,_that.inspector,_that.nasabah,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? nik, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? alamat, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'jumlah_pinjaman')  int? jumlahPinjaman,  String? status,  String? catatanAdmin, @JsonKey(name: 'inspected_at')  String? inspectedAt,  InspectorModel? inspector,  NasabahModel? nasabah, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PinjamanAdminModel():
return $default(_that.id,_that.nik,_that.namaLengkap,_that.alamat,_that.noTelepon,_that.jumlahPinjaman,_that.status,_that.catatanAdmin,_that.inspectedAt,_that.inspector,_that.nasabah,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? nik, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? alamat, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'jumlah_pinjaman')  int? jumlahPinjaman,  String? status,  String? catatanAdmin, @JsonKey(name: 'inspected_at')  String? inspectedAt,  InspectorModel? inspector,  NasabahModel? nasabah, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PinjamanAdminModel() when $default != null:
return $default(_that.id,_that.nik,_that.namaLengkap,_that.alamat,_that.noTelepon,_that.jumlahPinjaman,_that.status,_that.catatanAdmin,_that.inspectedAt,_that.inspector,_that.nasabah,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PinjamanAdminModel implements PinjamanAdminModel {
  const _PinjamanAdminModel({this.id, this.nik, @JsonKey(name: 'nama_lengkap') this.namaLengkap, this.alamat, @JsonKey(name: 'no_telepon') this.noTelepon, @JsonKey(name: 'jumlah_pinjaman') this.jumlahPinjaman, this.status, this.catatanAdmin, @JsonKey(name: 'inspected_at') this.inspectedAt, this.inspector, this.nasabah, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _PinjamanAdminModel.fromJson(Map<String, dynamic> json) => _$PinjamanAdminModelFromJson(json);

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
@override final  NasabahModel? nasabah;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'created_at') final  String? createdAt;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of PinjamanAdminModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PinjamanAdminModelCopyWith<_PinjamanAdminModel> get copyWith => __$PinjamanAdminModelCopyWithImpl<_PinjamanAdminModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PinjamanAdminModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PinjamanAdminModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.jumlahPinjaman, jumlahPinjaman) || other.jumlahPinjaman == jumlahPinjaman)&&(identical(other.status, status) || other.status == status)&&(identical(other.catatanAdmin, catatanAdmin) || other.catatanAdmin == catatanAdmin)&&(identical(other.inspectedAt, inspectedAt) || other.inspectedAt == inspectedAt)&&(identical(other.inspector, inspector) || other.inspector == inspector)&&(identical(other.nasabah, nasabah) || other.nasabah == nasabah)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nik,namaLengkap,alamat,noTelepon,jumlahPinjaman,status,catatanAdmin,inspectedAt,inspector,nasabah,createdAt,updatedAt);

@override
String toString() {
  return 'PinjamanAdminModel(id: $id, nik: $nik, namaLengkap: $namaLengkap, alamat: $alamat, noTelepon: $noTelepon, jumlahPinjaman: $jumlahPinjaman, status: $status, catatanAdmin: $catatanAdmin, inspectedAt: $inspectedAt, inspector: $inspector, nasabah: $nasabah, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PinjamanAdminModelCopyWith<$Res> implements $PinjamanAdminModelCopyWith<$Res> {
  factory _$PinjamanAdminModelCopyWith(_PinjamanAdminModel value, $Res Function(_PinjamanAdminModel) _then) = __$PinjamanAdminModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? nik,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? alamat,@JsonKey(name: 'no_telepon') String? noTelepon,@JsonKey(name: 'jumlah_pinjaman') int? jumlahPinjaman, String? status, String? catatanAdmin,@JsonKey(name: 'inspected_at') String? inspectedAt, InspectorModel? inspector, NasabahModel? nasabah,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


@override $InspectorModelCopyWith<$Res>? get inspector;@override $NasabahModelCopyWith<$Res>? get nasabah;

}
/// @nodoc
class __$PinjamanAdminModelCopyWithImpl<$Res>
    implements _$PinjamanAdminModelCopyWith<$Res> {
  __$PinjamanAdminModelCopyWithImpl(this._self, this._then);

  final _PinjamanAdminModel _self;
  final $Res Function(_PinjamanAdminModel) _then;

/// Create a copy of PinjamanAdminModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nik = freezed,Object? namaLengkap = freezed,Object? alamat = freezed,Object? noTelepon = freezed,Object? jumlahPinjaman = freezed,Object? status = freezed,Object? catatanAdmin = freezed,Object? inspectedAt = freezed,Object? inspector = freezed,Object? nasabah = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PinjamanAdminModel(
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
as InspectorModel?,nasabah: freezed == nasabah ? _self.nasabah : nasabah // ignore: cast_nullable_to_non_nullable
as NasabahModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PinjamanAdminModel
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
}/// Create a copy of PinjamanAdminModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NasabahModelCopyWith<$Res>? get nasabah {
    if (_self.nasabah == null) {
    return null;
  }

  return $NasabahModelCopyWith<$Res>(_self.nasabah!, (value) {
    return _then(_self.copyWith(nasabah: value));
  });
}
}


/// @nodoc
mixin _$NasabahModel {

 String? get id; String? get username;// ignore: invalid_annotation_target
@JsonKey(name: 'nama_lengkap') String? get namaLengkap; String? get role;// ignore: invalid_annotation_target
@JsonKey(name: 'created_at') String? get createdAt;// ignore: invalid_annotation_target
@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of NasabahModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NasabahModelCopyWith<NasabahModel> get copyWith => _$NasabahModelCopyWithImpl<NasabahModel>(this as NasabahModel, _$identity);

  /// Serializes this NasabahModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NasabahModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,namaLengkap,role,createdAt,updatedAt);

@override
String toString() {
  return 'NasabahModel(id: $id, username: $username, namaLengkap: $namaLengkap, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $NasabahModelCopyWith<$Res>  {
  factory $NasabahModelCopyWith(NasabahModel value, $Res Function(NasabahModel) _then) = _$NasabahModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? username,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? role,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$NasabahModelCopyWithImpl<$Res>
    implements $NasabahModelCopyWith<$Res> {
  _$NasabahModelCopyWithImpl(this._self, this._then);

  final NasabahModel _self;
  final $Res Function(NasabahModel) _then;

/// Create a copy of NasabahModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? username = freezed,Object? namaLengkap = freezed,Object? role = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NasabahModel].
extension NasabahModelPatterns on NasabahModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NasabahModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NasabahModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NasabahModel value)  $default,){
final _that = this;
switch (_that) {
case _NasabahModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NasabahModel value)?  $default,){
final _that = this;
switch (_that) {
case _NasabahModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? username, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? role, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NasabahModel() when $default != null:
return $default(_that.id,_that.username,_that.namaLengkap,_that.role,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? username, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? role, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _NasabahModel():
return $default(_that.id,_that.username,_that.namaLengkap,_that.role,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? username, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? role, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _NasabahModel() when $default != null:
return $default(_that.id,_that.username,_that.namaLengkap,_that.role,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NasabahModel implements NasabahModel {
  const _NasabahModel({this.id, this.username, @JsonKey(name: 'nama_lengkap') this.namaLengkap, this.role, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _NasabahModel.fromJson(Map<String, dynamic> json) => _$NasabahModelFromJson(json);

@override final  String? id;
@override final  String? username;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'nama_lengkap') final  String? namaLengkap;
@override final  String? role;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'created_at') final  String? createdAt;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of NasabahModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NasabahModelCopyWith<_NasabahModel> get copyWith => __$NasabahModelCopyWithImpl<_NasabahModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NasabahModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NasabahModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,namaLengkap,role,createdAt,updatedAt);

@override
String toString() {
  return 'NasabahModel(id: $id, username: $username, namaLengkap: $namaLengkap, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$NasabahModelCopyWith<$Res> implements $NasabahModelCopyWith<$Res> {
  factory _$NasabahModelCopyWith(_NasabahModel value, $Res Function(_NasabahModel) _then) = __$NasabahModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? username,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? role,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$NasabahModelCopyWithImpl<$Res>
    implements _$NasabahModelCopyWith<$Res> {
  __$NasabahModelCopyWithImpl(this._self, this._then);

  final _NasabahModel _self;
  final $Res Function(_NasabahModel) _then;

/// Create a copy of NasabahModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? username = freezed,Object? namaLengkap = freezed,Object? role = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_NasabahModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InspectorModel {

 String? get id;// ignore: invalid_annotation_target
@JsonKey(name: 'nama_lengkap') String? get namaLengkap; String? get role;// ignore: invalid_annotation_target
@JsonKey(name: 'created_at') String? get createdAt;// ignore: invalid_annotation_target
@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of InspectorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectorModelCopyWith<InspectorModel> get copyWith => _$InspectorModelCopyWithImpl<InspectorModel>(this as InspectorModel, _$identity);

  /// Serializes this InspectorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,role,createdAt,updatedAt);

@override
String toString() {
  return 'InspectorModel(id: $id, namaLengkap: $namaLengkap, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InspectorModelCopyWith<$Res>  {
  factory $InspectorModelCopyWith(InspectorModel value, $Res Function(InspectorModel) _then) = _$InspectorModelCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? role,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$InspectorModelCopyWithImpl<$Res>
    implements $InspectorModelCopyWith<$Res> {
  _$InspectorModelCopyWithImpl(this._self, this._then);

  final InspectorModel _self;
  final $Res Function(InspectorModel) _then;

/// Create a copy of InspectorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? namaLengkap = freezed,Object? role = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InspectorModel].
extension InspectorModelPatterns on InspectorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectorModel value)  $default,){
final _that = this;
switch (_that) {
case _InspectorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectorModel value)?  $default,){
final _that = this;
switch (_that) {
case _InspectorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? role, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectorModel() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.role,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? role, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InspectorModel():
return $default(_that.id,_that.namaLengkap,_that.role,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? role, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InspectorModel() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.role,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectorModel implements InspectorModel {
  const _InspectorModel({this.id, @JsonKey(name: 'nama_lengkap') this.namaLengkap, this.role, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _InspectorModel.fromJson(Map<String, dynamic> json) => _$InspectorModelFromJson(json);

@override final  String? id;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'nama_lengkap') final  String? namaLengkap;
@override final  String? role;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'created_at') final  String? createdAt;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of InspectorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectorModelCopyWith<_InspectorModel> get copyWith => __$InspectorModelCopyWithImpl<_InspectorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,role,createdAt,updatedAt);

@override
String toString() {
  return 'InspectorModel(id: $id, namaLengkap: $namaLengkap, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InspectorModelCopyWith<$Res> implements $InspectorModelCopyWith<$Res> {
  factory _$InspectorModelCopyWith(_InspectorModel value, $Res Function(_InspectorModel) _then) = __$InspectorModelCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? role,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$InspectorModelCopyWithImpl<$Res>
    implements _$InspectorModelCopyWith<$Res> {
  __$InspectorModelCopyWithImpl(this._self, this._then);

  final _InspectorModel _self;
  final $Res Function(_InspectorModel) _then;

/// Create a copy of InspectorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? namaLengkap = freezed,Object? role = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InspectorModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
