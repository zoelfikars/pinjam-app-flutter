import 'package:flutter/material.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/res/app_routes.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/core/util/input_validator.dart';
import 'package:flutter_app/core/util/server_validation_error.dart';
import 'package:flutter_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  Map<String, List<String>> _serverValidationErrors = {};
  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final authBloc = context.read<AuthBloc>();
      authBloc.add(
        AuthEvent.loginRequested(
          params: LoginParams(username: _username, password: _password),
        ),
      );
    }
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _username = '';
    _password = '';
    _serverValidationErrors = {};
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.loginTitle, style: textTheme.titleMedium),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authenticated: (user) {
              if (user.role == 'admin') {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.listPengajuanAdmin,
                );
              } else if (user.role == 'nasabah') {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.listPengajuanNasabah,
                );
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Login sukses sebagai ${user.fullName}!'),
                ),
              );
            },
            failure: (failure) {
              final message = failure.when(
                serverFailure: (msg) {
                  return 'Server Error: $msg';
                },
                clientFailure: (msg, validationErrors) {
                  if (validationErrors != null && validationErrors.isNotEmpty) {
                    setState(() {
                      _serverValidationErrors = Map<String, List<String>>.from(
                        validationErrors.map(
                          (k, v) => MapEntry(k, List<String>.from(v)),
                        ),
                      );
                    });
                  }
                  return 'Gagal Validasi: $msg';
                },
                authFailure: (msg) {
                  return 'Autentikasi Gagal: $msg';
                },
                cacheFailure: (msg) {
                  return 'Error Lokal: $msg';
                },
              );
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );
          return SingleChildScrollView(
            padding: const EdgeInsets.all(Dimens.paddingLarge),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: Dimens.paddingMedium,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: AppStrings.labelUsername,
                      prefixIcon: Icon(Icons.person, size: Dimens.iconSize),
                      errorText: getServerError(
                        'username',
                        _serverValidationErrors,
                      ),
                    ),
                    validator: (value) => InputValidator.validateField(
                      value,
                      AppStrings.labelUsername,
                      ['required', 'min:4', 'max:20'],
                    ),
                    onSaved: (value) => _username = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: AppStrings.labelPassword,
                      prefixIcon: Icon(Icons.lock, size: Dimens.iconSize),
                      errorText: getServerError(
                        'password',
                        _serverValidationErrors,
                      ),
                    ),
                    obscureText: true,
                    validator: (value) => InputValidator.validateField(
                      value,
                      AppStrings.labelPassword,
                      ['required', 'min:8', 'max:20'],
                    ),
                    onSaved: (value) => _password = value!,
                  ),
                  const SizedBox(height: Dimens.paddingMedium),
                  ElevatedButton(
                    onPressed: isLoading ? null : _submit,
                    child: isLoading
                        ? const SizedBox(
                            height: Dimens.fontSizeBody,
                            width: Dimens.fontSizeBody,
                            child: CircularProgressIndicator(
                              strokeWidth: Dimens.progressBarStrokeWidth,
                            ),
                          )
                        : Text(AppStrings.buttonLogin),
                  ),
                  TextButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            Navigator.pushNamed(context, AppRoutes.register);
                          },
                    child: Text(
                      AppStrings.linkToRegister,
                      style: textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
