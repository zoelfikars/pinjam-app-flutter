import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/res/app_constant.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/core/util/input_validator.dart';
import 'package:flutter_app/core/util/server_validation_error.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_bloc.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_event.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FormPinjamPage extends StatefulWidget {
  const FormPinjamPage({super.key});
  @override
  State<FormPinjamPage> createState() => _FormPinjamPageState();
}

class _FormPinjamPageState extends State<FormPinjamPage> {
  final _formKey = GlobalKey<FormState>();
  final _jumlahController = TextEditingController();
  String _nik = '';
  String _address = '';
  String _phoneNumber = '';
  Map<String, List<String>> _serverValidationErrors = {};
  @override
  void dispose() {
    _jumlahController.dispose();
    _serverValidationErrors = {};
    _phoneNumber = '';
    _address = '';
    _nik = '';
    _formKey.currentState?.dispose();
    super.dispose();
  }

  void _formatLoanAmount(String text) {
    if (text.isEmpty) return;
    String cleanText = text.replaceAll(RegExp(r'\.|Rp '), '');
    int? value = int.tryParse(cleanText);
    if (value != null) {
      String newText = AppConstant.numberFormat.format(value).trim();
      if (newText != text) {
        _jumlahController.value = TextEditingValue(
          text: newText,
          selection: TextSelection.collapsed(offset: newText.length),
        );
      }
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final rawJumlahText = _jumlahController.text;
      String cleanText = rawJumlahText.replaceAll(RegExp(r'\.|Rp '), '');
      final rawJumlahInt = int.tryParse(cleanText) ?? 0;
      context.read<PinjamanBloc>().add(
        PinjamanEvent.submissionRequested(
          nik: _nik,
          noTelepon: _phoneNumber,
          alamat: _address,
          jumlahPinjaman: rawJumlahInt,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.formPinjamTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: BlocConsumer<PinjamanBloc, PinjamanState>(
        listener: (context, state) {
          state.whenOrNull(
            submissionSuccess: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
              Navigator.pop(context);
            },
            failure: (failure) {
              final message = failure.when(
                serverFailure: (msg) => 'Server Error: $msg',
                authFailure: (msg) =>
                    'Autentikasi Gagal: $msg (Coba Login Ulang)',
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
                  return msg;
                },
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  duration: const Duration(seconds: 4),
                ),
              );
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
                children: <Widget>[
                  TextFormField(
                    onSaved: (value) => _nik = value!,
                    decoration: InputDecoration(
                      labelText: AppStrings.labelNIK,
                      prefixIcon: Icon(
                        Icons.credit_card,
                        size: Dimens.iconSize,
                      ),
                      errorText: getServerError('nik', _serverValidationErrors),
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 16,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                    ],
                    validator: (value) => InputValidator.validateField(
                      value,
                      AppStrings.labelNIK,
                      ['required', 'numeric', 'min:16', 'max:16'],
                    ),
                  ),
                  const SizedBox(height: Dimens.paddingMedium),
                  TextFormField(
                    onSaved: (value) => _address = value!,
                    decoration: InputDecoration(
                      labelText: AppStrings.labelAddress,
                      prefixIcon: Icon(Icons.home, size: Dimens.iconSize),
                      errorText: getServerError(
                        'address',
                        _serverValidationErrors,
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                    validator: (value) => InputValidator.validateField(
                      value,
                      AppStrings.labelAddress,
                      ['required'],
                    ),
                  ),
                  const SizedBox(height: Dimens.paddingMedium),
                  TextFormField(
                    onSaved: (value) => _phoneNumber = value!,
                    decoration: InputDecoration(
                      labelText: AppStrings.labelPhone,
                      prefixIcon: Icon(Icons.phone, size: Dimens.iconSize),
                      errorText: getServerError(
                        'no_telepon',
                        _serverValidationErrors,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) => InputValidator.validateField(
                      value,
                      AppStrings.labelPhone,
                      ['required', 'phone'],
                    ),
                  ),
                  const SizedBox(height: Dimens.paddingMedium),
                  TextFormField(
                    controller: _jumlahController,
                    decoration: InputDecoration(
                      labelText: AppStrings.labelLoanAmount,
                      prefixIcon: const Icon(
                        Icons.money,
                        size: Dimens.iconSize,
                      ),
                      suffixText: AppStrings.idrCurrencySymbol,
                      errorText: getServerError(
                        'jumlah_pinjaman',
                        _serverValidationErrors,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: _formatLoanAmount,
                    validator: (value) {
                      debugPrint('value ui : $value');
                      return InputValidator.validateField(
                        value?.replaceAll(RegExp(r'[.Rp ]'), ''),
                        AppStrings.labelLoanAmount,
                        ['required', 'numeric', 'gte:1000000'],
                      );
                    },
                  ),
                  const SizedBox(height: Dimens.paddingExtraLarge),
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
                        : const Text(AppStrings.buttonAjukanPinjaman),
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
