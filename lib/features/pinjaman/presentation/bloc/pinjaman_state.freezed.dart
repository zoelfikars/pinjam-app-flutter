// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pinjaman_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PinjamanState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinjamanState()';
}


}

/// @nodoc
class $PinjamanStateCopyWith<$Res>  {
$PinjamanStateCopyWith(PinjamanState _, $Res Function(PinjamanState) __);
}


/// Adds pattern-matching-related methods to [PinjamanState].
extension PinjamanStatePatterns on PinjamanState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PinjamanInitial value)?  initial,TResult Function( PinjamanLoading value)?  loading,TResult Function( PinjamanSubmissionSuccess value)?  submissionSuccess,TResult Function( PinjamanFailure value)?  failure,TResult Function( PinjamanLoadListSuccess value)?  loadListSuccess,TResult Function( PinjamanLoadListAdminSuccess value)?  loadListAdminSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PinjamanInitial() when initial != null:
return initial(_that);case PinjamanLoading() when loading != null:
return loading(_that);case PinjamanSubmissionSuccess() when submissionSuccess != null:
return submissionSuccess(_that);case PinjamanFailure() when failure != null:
return failure(_that);case PinjamanLoadListSuccess() when loadListSuccess != null:
return loadListSuccess(_that);case PinjamanLoadListAdminSuccess() when loadListAdminSuccess != null:
return loadListAdminSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PinjamanInitial value)  initial,required TResult Function( PinjamanLoading value)  loading,required TResult Function( PinjamanSubmissionSuccess value)  submissionSuccess,required TResult Function( PinjamanFailure value)  failure,required TResult Function( PinjamanLoadListSuccess value)  loadListSuccess,required TResult Function( PinjamanLoadListAdminSuccess value)  loadListAdminSuccess,}){
final _that = this;
switch (_that) {
case PinjamanInitial():
return initial(_that);case PinjamanLoading():
return loading(_that);case PinjamanSubmissionSuccess():
return submissionSuccess(_that);case PinjamanFailure():
return failure(_that);case PinjamanLoadListSuccess():
return loadListSuccess(_that);case PinjamanLoadListAdminSuccess():
return loadListAdminSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PinjamanInitial value)?  initial,TResult? Function( PinjamanLoading value)?  loading,TResult? Function( PinjamanSubmissionSuccess value)?  submissionSuccess,TResult? Function( PinjamanFailure value)?  failure,TResult? Function( PinjamanLoadListSuccess value)?  loadListSuccess,TResult? Function( PinjamanLoadListAdminSuccess value)?  loadListAdminSuccess,}){
final _that = this;
switch (_that) {
case PinjamanInitial() when initial != null:
return initial(_that);case PinjamanLoading() when loading != null:
return loading(_that);case PinjamanSubmissionSuccess() when submissionSuccess != null:
return submissionSuccess(_that);case PinjamanFailure() when failure != null:
return failure(_that);case PinjamanLoadListSuccess() when loadListSuccess != null:
return loadListSuccess(_that);case PinjamanLoadListAdminSuccess() when loadListAdminSuccess != null:
return loadListAdminSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  submissionSuccess,TResult Function( Failure failure)?  failure,TResult Function( List<PinjamanNasabahEntity> listPinjaman)?  loadListSuccess,TResult Function( List<PinjamanAdminEntity> listPinjamanAdmin)?  loadListAdminSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PinjamanInitial() when initial != null:
return initial();case PinjamanLoading() when loading != null:
return loading();case PinjamanSubmissionSuccess() when submissionSuccess != null:
return submissionSuccess(_that.message);case PinjamanFailure() when failure != null:
return failure(_that.failure);case PinjamanLoadListSuccess() when loadListSuccess != null:
return loadListSuccess(_that.listPinjaman);case PinjamanLoadListAdminSuccess() when loadListAdminSuccess != null:
return loadListAdminSuccess(_that.listPinjamanAdmin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  submissionSuccess,required TResult Function( Failure failure)  failure,required TResult Function( List<PinjamanNasabahEntity> listPinjaman)  loadListSuccess,required TResult Function( List<PinjamanAdminEntity> listPinjamanAdmin)  loadListAdminSuccess,}) {final _that = this;
switch (_that) {
case PinjamanInitial():
return initial();case PinjamanLoading():
return loading();case PinjamanSubmissionSuccess():
return submissionSuccess(_that.message);case PinjamanFailure():
return failure(_that.failure);case PinjamanLoadListSuccess():
return loadListSuccess(_that.listPinjaman);case PinjamanLoadListAdminSuccess():
return loadListAdminSuccess(_that.listPinjamanAdmin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  submissionSuccess,TResult? Function( Failure failure)?  failure,TResult? Function( List<PinjamanNasabahEntity> listPinjaman)?  loadListSuccess,TResult? Function( List<PinjamanAdminEntity> listPinjamanAdmin)?  loadListAdminSuccess,}) {final _that = this;
switch (_that) {
case PinjamanInitial() when initial != null:
return initial();case PinjamanLoading() when loading != null:
return loading();case PinjamanSubmissionSuccess() when submissionSuccess != null:
return submissionSuccess(_that.message);case PinjamanFailure() when failure != null:
return failure(_that.failure);case PinjamanLoadListSuccess() when loadListSuccess != null:
return loadListSuccess(_that.listPinjaman);case PinjamanLoadListAdminSuccess() when loadListAdminSuccess != null:
return loadListAdminSuccess(_that.listPinjamanAdmin);case _:
  return null;

}
}

}

/// @nodoc


class PinjamanInitial implements PinjamanState {
  const PinjamanInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinjamanState.initial()';
}


}




/// @nodoc


class PinjamanLoading implements PinjamanState {
  const PinjamanLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinjamanState.loading()';
}


}




/// @nodoc


class PinjamanSubmissionSuccess implements PinjamanState {
  const PinjamanSubmissionSuccess({required this.message});
  

 final  String message;

/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinjamanSubmissionSuccessCopyWith<PinjamanSubmissionSuccess> get copyWith => _$PinjamanSubmissionSuccessCopyWithImpl<PinjamanSubmissionSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanSubmissionSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PinjamanState.submissionSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $PinjamanSubmissionSuccessCopyWith<$Res> implements $PinjamanStateCopyWith<$Res> {
  factory $PinjamanSubmissionSuccessCopyWith(PinjamanSubmissionSuccess value, $Res Function(PinjamanSubmissionSuccess) _then) = _$PinjamanSubmissionSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PinjamanSubmissionSuccessCopyWithImpl<$Res>
    implements $PinjamanSubmissionSuccessCopyWith<$Res> {
  _$PinjamanSubmissionSuccessCopyWithImpl(this._self, this._then);

  final PinjamanSubmissionSuccess _self;
  final $Res Function(PinjamanSubmissionSuccess) _then;

/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PinjamanSubmissionSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PinjamanFailure implements PinjamanState {
  const PinjamanFailure({required this.failure});
  

 final  Failure failure;

/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinjamanFailureCopyWith<PinjamanFailure> get copyWith => _$PinjamanFailureCopyWithImpl<PinjamanFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'PinjamanState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $PinjamanFailureCopyWith<$Res> implements $PinjamanStateCopyWith<$Res> {
  factory $PinjamanFailureCopyWith(PinjamanFailure value, $Res Function(PinjamanFailure) _then) = _$PinjamanFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$PinjamanFailureCopyWithImpl<$Res>
    implements $PinjamanFailureCopyWith<$Res> {
  _$PinjamanFailureCopyWithImpl(this._self, this._then);

  final PinjamanFailure _self;
  final $Res Function(PinjamanFailure) _then;

/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(PinjamanFailure(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get failure {
  
  return $FailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

/// @nodoc


class PinjamanLoadListSuccess implements PinjamanState {
  const PinjamanLoadListSuccess({required final  List<PinjamanNasabahEntity> listPinjaman}): _listPinjaman = listPinjaman;
  

 final  List<PinjamanNasabahEntity> _listPinjaman;
 List<PinjamanNasabahEntity> get listPinjaman {
  if (_listPinjaman is EqualUnmodifiableListView) return _listPinjaman;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listPinjaman);
}


/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinjamanLoadListSuccessCopyWith<PinjamanLoadListSuccess> get copyWith => _$PinjamanLoadListSuccessCopyWithImpl<PinjamanLoadListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanLoadListSuccess&&const DeepCollectionEquality().equals(other._listPinjaman, _listPinjaman));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listPinjaman));

@override
String toString() {
  return 'PinjamanState.loadListSuccess(listPinjaman: $listPinjaman)';
}


}

/// @nodoc
abstract mixin class $PinjamanLoadListSuccessCopyWith<$Res> implements $PinjamanStateCopyWith<$Res> {
  factory $PinjamanLoadListSuccessCopyWith(PinjamanLoadListSuccess value, $Res Function(PinjamanLoadListSuccess) _then) = _$PinjamanLoadListSuccessCopyWithImpl;
@useResult
$Res call({
 List<PinjamanNasabahEntity> listPinjaman
});




}
/// @nodoc
class _$PinjamanLoadListSuccessCopyWithImpl<$Res>
    implements $PinjamanLoadListSuccessCopyWith<$Res> {
  _$PinjamanLoadListSuccessCopyWithImpl(this._self, this._then);

  final PinjamanLoadListSuccess _self;
  final $Res Function(PinjamanLoadListSuccess) _then;

/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listPinjaman = null,}) {
  return _then(PinjamanLoadListSuccess(
listPinjaman: null == listPinjaman ? _self._listPinjaman : listPinjaman // ignore: cast_nullable_to_non_nullable
as List<PinjamanNasabahEntity>,
  ));
}


}

/// @nodoc


class PinjamanLoadListAdminSuccess implements PinjamanState {
  const PinjamanLoadListAdminSuccess({required final  List<PinjamanAdminEntity> listPinjamanAdmin}): _listPinjamanAdmin = listPinjamanAdmin;
  

 final  List<PinjamanAdminEntity> _listPinjamanAdmin;
 List<PinjamanAdminEntity> get listPinjamanAdmin {
  if (_listPinjamanAdmin is EqualUnmodifiableListView) return _listPinjamanAdmin;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listPinjamanAdmin);
}


/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinjamanLoadListAdminSuccessCopyWith<PinjamanLoadListAdminSuccess> get copyWith => _$PinjamanLoadListAdminSuccessCopyWithImpl<PinjamanLoadListAdminSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinjamanLoadListAdminSuccess&&const DeepCollectionEquality().equals(other._listPinjamanAdmin, _listPinjamanAdmin));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listPinjamanAdmin));

@override
String toString() {
  return 'PinjamanState.loadListAdminSuccess(listPinjamanAdmin: $listPinjamanAdmin)';
}


}

/// @nodoc
abstract mixin class $PinjamanLoadListAdminSuccessCopyWith<$Res> implements $PinjamanStateCopyWith<$Res> {
  factory $PinjamanLoadListAdminSuccessCopyWith(PinjamanLoadListAdminSuccess value, $Res Function(PinjamanLoadListAdminSuccess) _then) = _$PinjamanLoadListAdminSuccessCopyWithImpl;
@useResult
$Res call({
 List<PinjamanAdminEntity> listPinjamanAdmin
});




}
/// @nodoc
class _$PinjamanLoadListAdminSuccessCopyWithImpl<$Res>
    implements $PinjamanLoadListAdminSuccessCopyWith<$Res> {
  _$PinjamanLoadListAdminSuccessCopyWithImpl(this._self, this._then);

  final PinjamanLoadListAdminSuccess _self;
  final $Res Function(PinjamanLoadListAdminSuccess) _then;

/// Create a copy of PinjamanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listPinjamanAdmin = null,}) {
  return _then(PinjamanLoadListAdminSuccess(
listPinjamanAdmin: null == listPinjamanAdmin ? _self._listPinjamanAdmin : listPinjamanAdmin // ignore: cast_nullable_to_non_nullable
as List<PinjamanAdminEntity>,
  ));
}


}

// dart format on
