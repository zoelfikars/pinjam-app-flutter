import 'package:flutter/material.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/core/util/input_validator.dart';
import 'package:flutter_app/core/util/server_validation_error.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/approval_pinjaman_usecase.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_bloc.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_event.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_state.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/shared_widgets/detail_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminActionSheet extends StatefulWidget {
  final PinjamanAdminEntity pinjam;
  const AdminActionSheet({super.key, required this.pinjam});
  @override
  State<AdminActionSheet> createState() => _AdminActionSheetState();
}

class _AdminActionSheetState extends State<AdminActionSheet> {
  final _formKey = GlobalKey<FormState>();
  final _catatanController = TextEditingController();
  String? _selectedStatus;
  Map<String, List<String>> _serverValidationErrors = {};

  @override
  void dispose() {
    _catatanController.dispose();
    _serverValidationErrors = {};
    super.dispose();
  }

  void _approvalAction(BuildContext context) {
    if (_selectedStatus == 'rejected' && !_formKey.currentState!.validate()) {
      return;
    }
    if (_selectedStatus == null) return;
    _formKey.currentState!.save();
    final params = UpdatePinjamanParams(
      pinjamanId: widget.pinjam.id,
      status: _selectedStatus!,
      catatanAdmin: _selectedStatus == 'rejected'
          ? _catatanController.text.trim()
          : null,
    );

    context.read<PinjamanBloc>().add(
      PinjamanEvent.updateStatusRequested(params: params),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return BlocConsumer<PinjamanBloc, PinjamanState>(
      listener: (context, state) {
        state.whenOrNull(
          submissionSuccess: (message) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));

            Navigator.pop(context, true);
          },
          failure: (failure) {
            final errorMsg = failure.when(
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
              serverFailure: (msg) => msg,
              authFailure: (msg) => msg,
              cacheFailure: (msg) => msg,
            );
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(errorMsg)));
          },
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );
        return Padding(
          padding: mediaQuery.viewInsets,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(Dimens.paddingLarge),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.tinjauPinjamTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const Divider(),
                    DetailItem(
                      icon: Icons.card_membership_outlined,
                      label: AppStrings.labelNIK,
                      value: widget.pinjam.nik,
                    ),
                    DetailItem(
                      icon: Icons.person_outline,
                      label: AppStrings.labelFullName,
                      value: widget.pinjam.namaLengkap,
                    ),
                    DetailItem(
                      icon: Icons.location_on_outlined,
                      label: AppStrings.labelAddress,
                      value: widget.pinjam.alamat,
                    ),
                    DetailItem(
                      icon: Icons.phone_outlined,
                      label: AppStrings.labelPhone,
                      value: widget.pinjam.noTelepon,
                    ),
                    const Divider(),
                    RadioGroup<String>(
                      groupValue: _selectedStatus,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(AppStrings.setujui),
                            onTap: () {
                              setState(() {
                                _selectedStatus = 'approved';
                              });
                            },
                            leading: Radio<String>(value: 'approved'),
                          ),
                          ListTile(
                            title: Text(AppStrings.tolak),
                            onTap: () {
                              setState(() {
                                _selectedStatus = 'rejected';
                              });
                            },
                            leading: Radio<String>(value: 'rejected'),
                          ),
                        ],
                      ),
                      onChanged: (value) {
                        if (!isLoading) {
                          setState(() {
                            _selectedStatus = value;
                            _catatanController.clear();
                          });
                        }
                      },
                    ),
                    const SizedBox(height: Dimens.paddingMedium),
                    if (_selectedStatus == 'rejected')
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: Dimens.paddingMedium,
                        ),
                        child: TextFormField(
                          controller: _catatanController,
                          decoration: InputDecoration(
                            labelText: AppStrings.catatanAdminHint,
                            border: OutlineInputBorder(),
                            errorText: getServerError(
                              'Catatan',
                              _serverValidationErrors,
                            ),
                          ),
                          validator: (value) => InputValidator.validateField(
                            value,
                            'Catatan',
                            ['required'],
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ElevatedButton(
                      onPressed: _selectedStatus == null || isLoading
                          ? null
                          : () => _approvalAction(context),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(
                          Dimens.inputFieldHeight,
                        ),
                      ),
                      child: isLoading
                          ? SizedBox(
                              height: Dimens.fontSizeBody,
                              width: Dimens.fontSizeBody,
                              child: CircularProgressIndicator(
                                strokeWidth: Dimens.progressBarStrokeWidth,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            )
                          : Text(
                              'PROSES (${_selectedStatus?.toUpperCase() ?? 'Pilih Aksi'})',
                              style: const TextStyle(
                                fontSize: Dimens.fontSizeBody,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
