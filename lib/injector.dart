import 'package:dio/dio.dart';
import 'package:flutter_app/core/config/app_url.dart';
import 'package:flutter_app/core/network/auth_inteceptor.dart';
import 'package:flutter_app/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/logout_usecase.dart';
import 'package:flutter_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:flutter_app/features/pinjaman/data/datasources/pinjam_data_resource.dart';
import 'package:flutter_app/features/pinjaman/data/repositories/pinjaman_repository.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/ajukan_pinjaman_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/approval_pinjaman_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/get_list_pinjaman_admin_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/get_list_pinjaman_nasabah_usecase.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_app/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_app/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<AuthInterceptor>(() => AuthInterceptor(sl()));
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(baseUrl: AppUrl.baseUrl, contentType: 'application/json'),
    );
    dio.interceptors.add(sl<AuthInterceptor>());
    return dio;
  });

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );
  sl.registerLazySingleton<LoginUsecase>(() => LoginUsecase(sl()));
  sl.registerLazySingleton<GetAuthenticatedUser>(
    () => GetAuthenticatedUser(sl()),
  );
  sl.registerLazySingleton<LogoutUsecase>(() => LogoutUsecase(sl()));
  sl.registerLazySingleton<RegisterUsecase>(() => RegisterUsecase(sl()));

  sl.registerLazySingleton<PinjamanRemoteDataSource>(
    () => PinjamanRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<PinjamanRepository>(
    () => PinjamanRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<AjukanPinjamanUsecase>(
    () => AjukanPinjamanUsecase(sl()),
  );
  sl.registerLazySingleton<GetListPinjamanNasabahUsecase>(
    () => GetListPinjamanNasabahUsecase(sl()),
  );
  sl.registerLazySingleton<GetListPinjamanAdminUsecase>(
    () => GetListPinjamanAdminUsecase(sl()),
  );
  sl.registerLazySingleton<UpdatePinjamanStatusUsecase>(
    () => UpdatePinjamanStatusUsecase(sl()),
  );

  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginUsecase: sl(),
      authRepository: sl(),
      getAuthenticatedUser: sl(),
      logoutUsecase: sl(),
      registerUsecase: sl(),
    ),
  );
  sl.registerFactory<PinjamanBloc>(
    () => PinjamanBloc(
      ajukanPinjamanUsecase: sl(),
      getListPinjamanNasabahUsecase: sl(),
      getListPinjamanAdminUsecase: sl(),
      updatePinjamanStatusUsecase: sl(),
    ),
  );
}
