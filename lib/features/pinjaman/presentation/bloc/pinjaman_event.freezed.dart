// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pinjaman_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PinjamanEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinjamanEvent()';
}


}

/// @nodoc
class $PinjamanEventCopyWith<$Res>  {
$PinjamanEventCopyWith(PinjamanEvent _, $Res Function(PinjamanEvent) __);
}


/// Adds pattern-matching-related methods to [PinjamanEvent].
extension PinjamanEventPatterns on PinjamanEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SubmissionRequested value)?  submissionRequested,TResult Function( FetchListRequested value)?  fetchListRequested,TResult Function( FetchListAdminRequested value)?  fetchListAdminRequested,TResult Function( UpdateStatusRequested value)?  updateStatusRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SubmissionRequested() when submissionRequested != null:
return submissionRequested(_that);case FetchListRequested() when fetchListRequested != null:
return fetchListRequested(_that);case FetchListAdminRequested() when fetchListAdminRequested != null:
return fetchListAdminRequested(_that);case UpdateStatusRequested() when updateStatusRequested != null:
return updateStatusRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SubmissionRequested value)  submissionRequested,required TResult Function( FetchListRequested value)  fetchListRequested,required TResult Function( FetchListAdminRequested value)  fetchListAdminRequested,required TResult Function( UpdateStatusRequested value)  updateStatusRequested,}){
final _that = this;
switch (_that) {
case SubmissionRequested():
return submissionRequested(_that);case FetchListRequested():
return fetchListRequested(_that);case FetchListAdminRequested():
return fetchListAdminRequested(_that);case UpdateStatusRequested():
return updateStatusRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SubmissionRequested value)?  submissionRequested,TResult? Function( FetchListRequested value)?  fetchListRequested,TResult? Function( FetchListAdminRequested value)?  fetchListAdminRequested,TResult? Function( UpdateStatusRequested value)?  updateStatusRequested,}){
final _that = this;
switch (_that) {
case SubmissionRequested() when submissionRequested != null:
return submissionRequested(_that);case FetchListRequested() when fetchListRequested != null:
return fetchListRequested(_that);case FetchListAdminRequested() when fetchListAdminRequested != null:
return fetchListAdminRequested(_that);case UpdateStatusRequested() when updateStatusRequested != null:
return updateStatusRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String nik,  String noTelepon,  String alamat,  int jumlahPinjaman)?  submissionRequested,TResult Function()?  fetchListRequested,TResult Function()?  fetchListAdminRequested,TResult Function( UpdatePinjamanParams params)?  updateStatusRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SubmissionRequested() when submissionRequested != null:
return submissionRequested(_that.nik,_that.noTelepon,_that.alamat,_that.jumlahPinjaman);case FetchListRequested() when fetchListRequested != null:
return fetchListRequested();case FetchListAdminRequested() when fetchListAdminRequested != null:
return fetchListAdminRequested();case UpdateStatusRequested() when updateStatusRequested != null:
return updateStatusRequested(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String nik,  String noTelepon,  String alamat,  int jumlahPinjaman)  submissionRequested,required TResult Function()  fetchListRequested,required TResult Function()  fetchListAdminRequested,required TResult Function( UpdatePinjamanParams params)  updateStatusRequested,}) {final _that = this;
switch (_that) {
case SubmissionRequested():
return submissionRequested(_that.nik,_that.noTelepon,_that.alamat,_that.jumlahPinjaman);case FetchListRequested():
return fetchListRequested();case FetchListAdminRequested():
return fetchListAdminRequested();case UpdateStatusRequested():
return updateStatusRequested(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String nik,  String noTelepon,  String alamat,  int jumlahPinjaman)?  submissionRequested,TResult? Function()?  fetchListRequested,TResult? Function()?  fetchListAdminRequested,TResult? Function( UpdatePinjamanParams params)?  updateStatusRequested,}) {final _that = this;
switch (_that) {
case SubmissionRequested() when submissionRequested != null:
return submissionRequested(_that.nik,_that.noTelepon,_that.alamat,_that.jumlahPinjaman);case FetchListRequested() when fetchListRequested != null:
return fetchListRequested();case FetchListAdminRequested() when fetchListAdminRequested != null:
return fetchListAdminRequested();case UpdateStatusRequested() when updateStatusRequested != null:
return updateStatusRequested(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class SubmissionRequested implements PinjamanEvent {
  const SubmissionRequested({required this.nik, required this.noTelepon, required this.alamat, required this.jumlahPinjaman});
  

 final  String nik;
 final  String noTelepon;
 final  String alamat;
 final  int jumlahPinjaman;

/// Create a copy of PinjamanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmissionRequestedCopyWith<SubmissionRequested> get copyWith => _$SubmissionRequestedCopyWithImpl<SubmissionRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmissionRequested&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.jumlahPinjaman, jumlahPinjaman) || other.jumlahPinjaman == jumlahPinjaman));
}


@override
int get hashCode => Object.hash(runtimeType,nik,noTelepon,alamat,jumlahPinjaman);

@override
String toString() {
  return 'PinjamanEvent.submissionRequested(nik: $nik, noTelepon: $noTelepon, alamat: $alamat, jumlahPinjaman: $jumlahPinjaman)';
}


}

/// @nodoc
abstract mixin class $SubmissionRequestedCopyWith<$Res> implements $PinjamanEventCopyWith<$Res> {
  factory $SubmissionRequestedCopyWith(SubmissionRequested value, $Res Function(SubmissionRequested) _then) = _$SubmissionRequestedCopyWithImpl;
@useResult
$Res call({
 String nik, String noTelepon, String alamat, int jumlahPinjaman
});




}
/// @nodoc
class _$SubmissionRequestedCopyWithImpl<$Res>
    implements $SubmissionRequestedCopyWith<$Res> {
  _$SubmissionRequestedCopyWithImpl(this._self, this._then);

  final SubmissionRequested _self;
  final $Res Function(SubmissionRequested) _then;

/// Create a copy of PinjamanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nik = null,Object? noTelepon = null,Object? alamat = null,Object? jumlahPinjaman = null,}) {
  return _then(SubmissionRequested(
nik: null == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String,noTelepon: null == noTelepon ? _self.noTelepon : noTelepon // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,jumlahPinjaman: null == jumlahPinjaman ? _self.jumlahPinjaman : jumlahPinjaman // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class FetchListRequested implements PinjamanEvent {
  const FetchListRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchListRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinjamanEvent.fetchListRequested()';
}


}




/// @nodoc


class FetchListAdminRequested implements PinjamanEvent {
  const FetchListAdminRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchListAdminRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinjamanEvent.fetchListAdminRequested()';
}


}




/// @nodoc


class UpdateStatusRequested implements PinjamanEvent {
  const UpdateStatusRequested({required this.params});
  

 final  UpdatePinjamanParams params;

/// Create a copy of PinjamanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStatusRequestedCopyWith<UpdateStatusRequested> get copyWith => _$UpdateStatusRequestedCopyWithImpl<UpdateStatusRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStatusRequested&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'PinjamanEvent.updateStatusRequested(params: $params)';
}


}

/// @nodoc
abstract mixin class $UpdateStatusRequestedCopyWith<$Res> implements $PinjamanEventCopyWith<$Res> {
  factory $UpdateStatusRequestedCopyWith(UpdateStatusRequested value, $Res Function(UpdateStatusRequested) _then) = _$UpdateStatusRequestedCopyWithImpl;
@useResult
$Res call({
 UpdatePinjamanParams params
});


$UpdatePinjamanParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$UpdateStatusRequestedCopyWithImpl<$Res>
    implements $UpdateStatusRequestedCopyWith<$Res> {
  _$UpdateStatusRequestedCopyWithImpl(this._self, this._then);

  final UpdateStatusRequested _self;
  final $Res Function(UpdateStatusRequested) _then;

/// Create a copy of PinjamanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(UpdateStatusRequested(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UpdatePinjamanParams,
  ));
}

/// Create a copy of PinjamanEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatePinjamanParamsCopyWith<$Res> get params {
  
  return $UpdatePinjamanParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
