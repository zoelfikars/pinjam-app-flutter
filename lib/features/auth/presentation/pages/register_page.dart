import 'package:flutter/material.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/core/util/input_validator.dart';
import 'package:flutter_app/core/util/server_validation_error.dart';
import 'package:flutter_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _fullName = '';
  String _password = '';
  String _confirmPassword = '';
  Map<String, List<String>> _serverValidationErrors = {};
  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.read<AuthBloc>().add(
        AuthEvent.registerRequested(
          params: RegisterParams(
            username: _username,
            password: _password,
            passwordConfirmation: _confirmPassword,
            fullName: _fullName,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _username = '';
    _fullName = '';
    _password = '';
    _confirmPassword = '';
    _serverValidationErrors = {};
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.registerTitle, style: textTheme.titleMedium),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            registerSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Pendaftaran berhasil! Silakan login.'),
                ),
              );
              Navigator.pop(context);
            },
            failure: (failure) {
              String message = failure.when(
                serverFailure: (msg) => 'Server Error: $msg',
                authFailure: (msg) => 'Autentikasi Gagal: $msg',
                cacheFailure: (msg) => 'Error Lokal: $msg',
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
                      labelText: AppStrings.labelFullName,
                      prefixIcon: Icon(Icons.badge, size: Dimens.iconSize),
                      errorText: getServerError(
                        'nama_lengkap',
                        _serverValidationErrors,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) => InputValidator.validateField(
                      value,
                      AppStrings.labelFullName,
                      ['required', 'min:4', 'max:100'],
                    ),
                    onSaved: (value) => _fullName = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: AppStrings.labelUsername,
                      prefixIcon: Icon(Icons.person, size: Dimens.iconSize),
                      errorText: getServerError(
                        'username',
                        _serverValidationErrors,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) => InputValidator.validateField(
                      value,
                      AppStrings.labelUsername,
                      ['required', 'min:4', 'max:100'],
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: AppStrings.labelConfirmPassword,
                      prefixIcon: Icon(Icons.lock_reset, size: Dimens.iconSize),
                      errorText: getServerError(
                        'password_confirmation',
                        _serverValidationErrors,
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      _formKey.currentState!.save();

                      return InputValidator.validateField(
                        value,
                        AppStrings.labelConfirmPassword,
                        ['required', 'min:8', 'max:20'],
                      );
                    },
                    onSaved: (value) => _confirmPassword = value!,
                  ),
                  const SizedBox(height: Dimens.paddingMedium),
                  ElevatedButton(
                    onPressed: isLoading ? null : _submit,
                    child: isLoading
                        ? SizedBox(
                            height: Dimens.fontSizeBody,
                            width: Dimens.fontSizeBody,
                            child: const CircularProgressIndicator(
                              strokeWidth: Dimens.progressBarStrokeWidth,
                            ),
                          )
                        : Text(AppStrings.buttonRegister),
                  ),
                  TextButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            Navigator.pop(context);
                          },
                    child: Text(
                      AppStrings.linkToLogin,
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
