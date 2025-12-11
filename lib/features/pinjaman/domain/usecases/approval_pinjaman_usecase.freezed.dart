// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_pinjaman_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePinjamanParams {

 String get pinjamanId; String get status; String? get catatanAdmin;
/// Create a copy of UpdatePinjamanParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePinjamanParamsCopyWith<UpdatePinjamanParams> get copyWith => _$UpdatePinjamanParamsCopyWithImpl<UpdatePinjamanParams>(this as UpdatePinjamanParams, _$identity);

  /// Serializes this UpdatePinjamanParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePinjamanParams&&(identical(other.pinjamanId, pinjamanId) || other.pinjamanId == pinjamanId)&&(identical(other.status, status) || other.status == status)&&(identical(other.catatanAdmin, catatanAdmin) || other.catatanAdmin == catatanAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pinjamanId,status,catatanAdmin);

@override
String toString() {
  return 'UpdatePinjamanParams(pinjamanId: $pinjamanId, status: $status, catatanAdmin: $catatanAdmin)';
}


}

/// @nodoc
abstract mixin class $UpdatePinjamanParamsCopyWith<$Res>  {
  factory $UpdatePinjamanParamsCopyWith(UpdatePinjamanParams value, $Res Function(UpdatePinjamanParams) _then) = _$UpdatePinjamanParamsCopyWithImpl;
@useResult
$Res call({
 String pinjamanId, String status, String? catatanAdmin
});




}
/// @nodoc
class _$UpdatePinjamanParamsCopyWithImpl<$Res>
    implements $UpdatePinjamanParamsCopyWith<$Res> {
  _$UpdatePinjamanParamsCopyWithImpl(this._self, this._then);

  final UpdatePinjamanParams _self;
  final $Res Function(UpdatePinjamanParams) _then;

/// Create a copy of UpdatePinjamanParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pinjamanId = null,Object? status = null,Object? catatanAdmin = freezed,}) {
  return _then(_self.copyWith(
pinjamanId: null == pinjamanId ? _self.pinjamanId : pinjamanId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,catatanAdmin: freezed == catatanAdmin ? _self.catatanAdmin : catatanAdmin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePinjamanParams].
extension UpdatePinjamanParamsPatterns on UpdatePinjamanParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePinjamanParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePinjamanParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePinjamanParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePinjamanParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePinjamanParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePinjamanParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pinjamanId,  String status,  String? catatanAdmin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePinjamanParams() when $default != null:
return $default(_that.pinjamanId,_that.status,_that.catatanAdmin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pinjamanId,  String status,  String? catatanAdmin)  $default,) {final _that = this;
switch (_that) {
case _UpdatePinjamanParams():
return $default(_that.pinjamanId,_that.status,_that.catatanAdmin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pinjamanId,  String status,  String? catatanAdmin)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePinjamanParams() when $default != null:
return $default(_that.pinjamanId,_that.status,_that.catatanAdmin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePinjamanParams implements UpdatePinjamanParams {
  const _UpdatePinjamanParams({required this.pinjamanId, required this.status, this.catatanAdmin});
  factory _UpdatePinjamanParams.fromJson(Map<String, dynamic> json) => _$UpdatePinjamanParamsFromJson(json);

@override final  String pinjamanId;
@override final  String status;
@override final  String? catatanAdmin;

/// Create a copy of UpdatePinjamanParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePinjamanParamsCopyWith<_UpdatePinjamanParams> get copyWith => __$UpdatePinjamanParamsCopyWithImpl<_UpdatePinjamanParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePinjamanParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePinjamanParams&&(identical(other.pinjamanId, pinjamanId) || other.pinjamanId == pinjamanId)&&(identical(other.status, status) || other.status == status)&&(identical(other.catatanAdmin, catatanAdmin) || other.catatanAdmin == catatanAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pinjamanId,status,catatanAdmin);

@override
String toString() {
  return 'UpdatePinjamanParams(pinjamanId: $pinjamanId, status: $status, catatanAdmin: $catatanAdmin)';
}


}

/// @nodoc
abstract mixin class _$UpdatePinjamanParamsCopyWith<$Res> implements $UpdatePinjamanParamsCopyWith<$Res> {
  factory _$UpdatePinjamanParamsCopyWith(_UpdatePinjamanParams value, $Res Function(_UpdatePinjamanParams) _then) = __$UpdatePinjamanParamsCopyWithImpl;
@override @useResult
$Res call({
 String pinjamanId, String status, String? catatanAdmin
});




}
/// @nodoc
class __$UpdatePinjamanParamsCopyWithImpl<$Res>
    implements _$UpdatePinjamanParamsCopyWith<$Res> {
  __$UpdatePinjamanParamsCopyWithImpl(this._self, this._then);

  final _UpdatePinjamanParams _self;
  final $Res Function(_UpdatePinjamanParams) _then;

/// Create a copy of UpdatePinjamanParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pinjamanId = null,Object? status = null,Object? catatanAdmin = freezed,}) {
  return _then(_UpdatePinjamanParams(
pinjamanId: null == pinjamanId ? _self.pinjamanId : pinjamanId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,catatanAdmin: freezed == catatanAdmin ? _self.catatanAdmin : catatanAdmin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
