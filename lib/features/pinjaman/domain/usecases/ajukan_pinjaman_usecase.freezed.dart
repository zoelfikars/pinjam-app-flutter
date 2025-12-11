// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ajukan_pinjaman_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AjukanPinjamanParams {

 String get nik; String get noTelepon; String get alamat; int get jumlahPinjaman;
/// Create a copy of AjukanPinjamanParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AjukanPinjamanParamsCopyWith<AjukanPinjamanParams> get copyWith => _$AjukanPinjamanParamsCopyWithImpl<AjukanPinjamanParams>(this as AjukanPinjamanParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AjukanPinjamanParams&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.jumlahPinjaman, jumlahPinjaman) || other.jumlahPinjaman == jumlahPinjaman));
}


@override
int get hashCode => Object.hash(runtimeType,nik,noTelepon,alamat,jumlahPinjaman);

@override
String toString() {
  return 'AjukanPinjamanParams(nik: $nik, noTelepon: $noTelepon, alamat: $alamat, jumlahPinjaman: $jumlahPinjaman)';
}


}

/// @nodoc
abstract mixin class $AjukanPinjamanParamsCopyWith<$Res>  {
  factory $AjukanPinjamanParamsCopyWith(AjukanPinjamanParams value, $Res Function(AjukanPinjamanParams) _then) = _$AjukanPinjamanParamsCopyWithImpl;
@useResult
$Res call({
 String nik, String noTelepon, String alamat, int jumlahPinjaman
});




}
/// @nodoc
class _$AjukanPinjamanParamsCopyWithImpl<$Res>
    implements $AjukanPinjamanParamsCopyWith<$Res> {
  _$AjukanPinjamanParamsCopyWithImpl(this._self, this._then);

  final AjukanPinjamanParams _self;
  final $Res Function(AjukanPinjamanParams) _then;

/// Create a copy of AjukanPinjamanParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nik = null,Object? noTelepon = null,Object? alamat = null,Object? jumlahPinjaman = null,}) {
  return _then(_self.copyWith(
nik: null == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String,noTelepon: null == noTelepon ? _self.noTelepon : noTelepon // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,jumlahPinjaman: null == jumlahPinjaman ? _self.jumlahPinjaman : jumlahPinjaman // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AjukanPinjamanParams].
extension AjukanPinjamanParamsPatterns on AjukanPinjamanParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AjukanPinjamanParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AjukanPinjamanParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AjukanPinjamanParams value)  $default,){
final _that = this;
switch (_that) {
case _AjukanPinjamanParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AjukanPinjamanParams value)?  $default,){
final _that = this;
switch (_that) {
case _AjukanPinjamanParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nik,  String noTelepon,  String alamat,  int jumlahPinjaman)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AjukanPinjamanParams() when $default != null:
return $default(_that.nik,_that.noTelepon,_that.alamat,_that.jumlahPinjaman);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nik,  String noTelepon,  String alamat,  int jumlahPinjaman)  $default,) {final _that = this;
switch (_that) {
case _AjukanPinjamanParams():
return $default(_that.nik,_that.noTelepon,_that.alamat,_that.jumlahPinjaman);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nik,  String noTelepon,  String alamat,  int jumlahPinjaman)?  $default,) {final _that = this;
switch (_that) {
case _AjukanPinjamanParams() when $default != null:
return $default(_that.nik,_that.noTelepon,_that.alamat,_that.jumlahPinjaman);case _:
  return null;

}
}

}

/// @nodoc


class _AjukanPinjamanParams implements AjukanPinjamanParams {
  const _AjukanPinjamanParams({required this.nik, required this.noTelepon, required this.alamat, required this.jumlahPinjaman});
  

@override final  String nik;
@override final  String noTelepon;
@override final  String alamat;
@override final  int jumlahPinjaman;

/// Create a copy of AjukanPinjamanParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AjukanPinjamanParamsCopyWith<_AjukanPinjamanParams> get copyWith => __$AjukanPinjamanParamsCopyWithImpl<_AjukanPinjamanParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AjukanPinjamanParams&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.jumlahPinjaman, jumlahPinjaman) || other.jumlahPinjaman == jumlahPinjaman));
}


@override
int get hashCode => Object.hash(runtimeType,nik,noTelepon,alamat,jumlahPinjaman);

@override
String toString() {
  return 'AjukanPinjamanParams(nik: $nik, noTelepon: $noTelepon, alamat: $alamat, jumlahPinjaman: $jumlahPinjaman)';
}


}

/// @nodoc
abstract mixin class _$AjukanPinjamanParamsCopyWith<$Res> implements $AjukanPinjamanParamsCopyWith<$Res> {
  factory _$AjukanPinjamanParamsCopyWith(_AjukanPinjamanParams value, $Res Function(_AjukanPinjamanParams) _then) = __$AjukanPinjamanParamsCopyWithImpl;
@override @useResult
$Res call({
 String nik, String noTelepon, String alamat, int jumlahPinjaman
});




}
/// @nodoc
class __$AjukanPinjamanParamsCopyWithImpl<$Res>
    implements _$AjukanPinjamanParamsCopyWith<$Res> {
  __$AjukanPinjamanParamsCopyWithImpl(this._self, this._then);

  final _AjukanPinjamanParams _self;
  final $Res Function(_AjukanPinjamanParams) _then;

/// Create a copy of AjukanPinjamanParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nik = null,Object? noTelepon = null,Object? alamat = null,Object? jumlahPinjaman = null,}) {
  return _then(_AjukanPinjamanParams(
nik: null == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String,noTelepon: null == noTelepon ? _self.noTelepon : noTelepon // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,jumlahPinjaman: null == jumlahPinjaman ? _self.jumlahPinjaman : jumlahPinjaman // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
