import 'package:flutter_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = AppStarted;
  const factory AuthEvent.loggedIn({required String username, required String role}) = LoggedIn;
  const factory AuthEvent.loggedOut() = LoggedOut;
  const factory AuthEvent.loginRequested({required LoginParams params}) = LoginRequested;
  const factory AuthEvent.registerRequested({required RegisterParams params}) = RegisterRequested;
}