import 'package:flutter/material.dart';
import 'package:flutter_app/core/res/app_routes.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/res/app_theme.dart';
import 'package:flutter_app/core/res/route_generator.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_bloc.dart';
import 'package:flutter_app/injector.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              di.sl<AuthBloc>()..add(const AuthEvent.appStarted()),
        ),
        BlocProvider<PinjamanBloc>(create: (context) => di.sl<PinjamanBloc>()),
      ],
      child: MaterialApp(
        title: AppStrings.appName,
        theme: appThemeData,
        initialRoute: AppRoutes.login,
        onGenerateRoute: RouteGenerator.generateRoute,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en', 'EN'), Locale('id', 'ID')],
      ),
    );
  }
}
