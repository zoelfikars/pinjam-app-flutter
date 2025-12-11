import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/features/auth/domain/entities/auth_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  const factory AuthState.authenticated({required AuthEntity user}) = AuthAuthenticated;
  
  const factory AuthState.registerSuccess() = AuthRegisterSuccess;

  const factory AuthState.failure({required Failure failure}) = AuthFailure;
}