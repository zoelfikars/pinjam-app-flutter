// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 String get message;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ServerFailure value)?  serverFailure,TResult Function( _ClientFailure value)?  clientFailure,TResult Function( _AuthFailure value)?  authFailure,TResult Function( _CacheFailure value)?  cacheFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _ClientFailure() when clientFailure != null:
return clientFailure(_that);case _AuthFailure() when authFailure != null:
return authFailure(_that);case _CacheFailure() when cacheFailure != null:
return cacheFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ServerFailure value)  serverFailure,required TResult Function( _ClientFailure value)  clientFailure,required TResult Function( _AuthFailure value)  authFailure,required TResult Function( _CacheFailure value)  cacheFailure,}){
final _that = this;
switch (_that) {
case _ServerFailure():
return serverFailure(_that);case _ClientFailure():
return clientFailure(_that);case _AuthFailure():
return authFailure(_that);case _CacheFailure():
return cacheFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ServerFailure value)?  serverFailure,TResult? Function( _ClientFailure value)?  clientFailure,TResult? Function( _AuthFailure value)?  authFailure,TResult? Function( _CacheFailure value)?  cacheFailure,}){
final _that = this;
switch (_that) {
case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _ClientFailure() when clientFailure != null:
return clientFailure(_that);case _AuthFailure() when authFailure != null:
return authFailure(_that);case _CacheFailure() when cacheFailure != null:
return cacheFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  serverFailure,TResult Function( String message,  Map<String, dynamic>? validationErrors)?  clientFailure,TResult Function( String message)?  authFailure,TResult Function( String message)?  cacheFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _ClientFailure() when clientFailure != null:
return clientFailure(_that.message,_that.validationErrors);case _AuthFailure() when authFailure != null:
return authFailure(_that.message);case _CacheFailure() when cacheFailure != null:
return cacheFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  serverFailure,required TResult Function( String message,  Map<String, dynamic>? validationErrors)  clientFailure,required TResult Function( String message)  authFailure,required TResult Function( String message)  cacheFailure,}) {final _that = this;
switch (_that) {
case _ServerFailure():
return serverFailure(_that.message);case _ClientFailure():
return clientFailure(_that.message,_that.validationErrors);case _AuthFailure():
return authFailure(_that.message);case _CacheFailure():
return cacheFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  serverFailure,TResult? Function( String message,  Map<String, dynamic>? validationErrors)?  clientFailure,TResult? Function( String message)?  authFailure,TResult? Function( String message)?  cacheFailure,}) {final _that = this;
switch (_that) {
case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _ClientFailure() when clientFailure != null:
return clientFailure(_that.message,_that.validationErrors);case _AuthFailure() when authFailure != null:
return authFailure(_that.message);case _CacheFailure() when cacheFailure != null:
return cacheFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ServerFailure extends Failure {
  const _ServerFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerFailureCopyWith<_ServerFailure> get copyWith => __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(_ServerFailure value, $Res Function(_ServerFailure) _then) = __$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(this._self, this._then);

  final _ServerFailure _self;
  final $Res Function(_ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ClientFailure extends Failure {
  const _ClientFailure({required this.message, final  Map<String, dynamic>? validationErrors}): _validationErrors = validationErrors,super._();
  

@override final  String message;
 final  Map<String, dynamic>? _validationErrors;
 Map<String, dynamic>? get validationErrors {
  final value = _validationErrors;
  if (value == null) return null;
  if (_validationErrors is EqualUnmodifiableMapView) return _validationErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientFailureCopyWith<_ClientFailure> get copyWith => __$ClientFailureCopyWithImpl<_ClientFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._validationErrors, _validationErrors));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_validationErrors));

@override
String toString() {
  return 'Failure.clientFailure(message: $message, validationErrors: $validationErrors)';
}


}

/// @nodoc
abstract mixin class _$ClientFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ClientFailureCopyWith(_ClientFailure value, $Res Function(_ClientFailure) _then) = __$ClientFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, Map<String, dynamic>? validationErrors
});




}
/// @nodoc
class __$ClientFailureCopyWithImpl<$Res>
    implements _$ClientFailureCopyWith<$Res> {
  __$ClientFailureCopyWithImpl(this._self, this._then);

  final _ClientFailure _self;
  final $Res Function(_ClientFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? validationErrors = freezed,}) {
  return _then(_ClientFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,validationErrors: freezed == validationErrors ? _self._validationErrors : validationErrors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc


class _AuthFailure extends Failure {
  const _AuthFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthFailureCopyWith<_AuthFailure> get copyWith => __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.authFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AuthFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(_AuthFailure value, $Res Function(_AuthFailure) _then) = __$AuthFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AuthFailureCopyWithImpl<$Res>
    implements _$AuthFailureCopyWith<$Res> {
  __$AuthFailureCopyWithImpl(this._self, this._then);

  final _AuthFailure _self;
  final $Res Function(_AuthFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AuthFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CacheFailure extends Failure {
  const _CacheFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CacheFailureCopyWith<_CacheFailure> get copyWith => __$CacheFailureCopyWithImpl<_CacheFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CacheFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.cacheFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$CacheFailureCopyWith(_CacheFailure value, $Res Function(_CacheFailure) _then) = __$CacheFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CacheFailureCopyWithImpl<$Res>
    implements _$CacheFailureCopyWith<$Res> {
  __$CacheFailureCopyWithImpl(this._self, this._then);

  final _CacheFailure _self;
  final $Res Function(_CacheFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CacheFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
