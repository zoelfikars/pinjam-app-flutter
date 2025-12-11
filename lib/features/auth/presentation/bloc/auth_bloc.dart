import 'package:flutter_app/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_app/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/logout_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  final AuthRepository authRepository;
  final GetAuthenticatedUser getAuthenticatedUser;
  final LogoutUsecase logoutUsecase;
  final RegisterUsecase registerUsecase;

  AuthBloc({
    required this.loginUsecase,
    required this.authRepository,
    required this.getAuthenticatedUser,
    required this.logoutUsecase,
    required this.registerUsecase,
  }) : super(const AuthState.initial()) {
    on<AppStarted>(_onAppStarted);
    on<LoginRequested>(_onLoginRequested);
    on<LoggedOut>(_onLoggedOut);
    on<RegisterRequested>(_onRegisterRequested);
  }

  Future<void> _onAppStarted(AppStarted event, Emitter<AuthState> emit) async {
    final result = await authRepository.getUser();
    result.fold(
      (_) => emit(const AuthState.unauthenticated()),
      (user) => emit(AuthState.authenticated(user: user)),
    );
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final params = LoginParams(
      username: event.params.username,
      password: event.params.password,
    );
    final result = await loginUsecase(params);

    await result.fold(
      (failure) async => emit(AuthState.failure(failure: failure)),
      (entity) async {
        final userResult = await authRepository.getUser();
        userResult.fold(
          (failure) => emit(AuthState.failure(failure: failure)),
          (user) => emit(AuthState.authenticated(user: user)),
        );
      },
    );
  }

  Future<void> _onLoggedOut(LoggedOut event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await logoutUsecase();

    result.fold(
      (_) => emit(const AuthState.unauthenticated()),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _onRegisterRequested(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final params = RegisterParams(
      username: event.params.username,
      password: event.params.password,
      passwordConfirmation: event.params.passwordConfirmation,
      fullName: event.params.fullName,
    );
    final result = await registerUsecase(params);

    await result.fold(
      (failure) {
        emit(const AuthState.unauthenticated());
        emit(AuthState.failure(failure: failure));
      },
      (successMessage) {
        emit(const AuthState.unauthenticated());
        emit(const AuthState.registerSuccess());
      },
    );
  }
}
