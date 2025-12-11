import 'package:flutter/material.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/res/app_routes.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_bloc.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_event.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_state.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/admin/widgets/list_item_pinjam_admin.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/admin/widgets/pinjam_admin_action_sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPinjamAdminPage extends StatefulWidget {
  const ListPinjamAdminPage({super.key});
  @override
  State<ListPinjamAdminPage> createState() => _ListPinjamAdminPageState();
}

class _ListPinjamAdminPageState extends State<ListPinjamAdminPage> {
  void _tinjauPinjam(BuildContext context, PinjamanAdminEntity pinjam) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => AdminActionSheet(pinjam: pinjam),
    );
  }

  void _onLogoutTap(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.loggedOut());
  }

  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  Future<void> _onRefresh() async {
    context.read<PinjamanBloc>().add(
      const PinjamanEvent.fetchListAdminRequested(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          unauthenticated: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.login,
              (Route<dynamic> route) => false,
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Semua Pengajuan Pinjaman (Admin)',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          automaticallyImplyLeading: false,
          actions: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );
                if (isLoading) {
                  return Padding(
                    padding: const EdgeInsets.all(Dimens.paddingMedium),
                    child: SizedBox(
                      width: Dimens.fontSizeTitle,
                      height: Dimens.fontSizeTitle,
                      child: CircularProgressIndicator(
                        strokeWidth: Dimens.progressBarStrokeWidth,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  );
                }
                return IconButton(
                  icon: const Icon(Icons.exit_to_app),
                  onPressed: isLoading ? null : () => _onLogoutTap(context),
                );
              },
            ),
          ],
        ),
        body: BlocConsumer<PinjamanBloc, PinjamanState>(
          listener: (context, state) {
            state.whenOrNull(
              failure: (failure) {
                final message = failure.when(
                  serverFailure: (msg) => 'Server Error: $msg',
                  authFailure: (msg) => 'Sesi Habis: $msg',
                  clientFailure: (msg, _) => 'Klien Error: $msg',
                  cacheFailure: (msg) => 'Cache Error: $msg',
                );
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              },
              // Tambahkan listener untuk aksi admin (setuju/tolak) jika sudah diimplementasikan
              // submissionSuccess: (message) { ... _onRefresh() ... }
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loadListAdminSuccess: (listPinjamanAdmin) {
                if (listPinjamanAdmin.isEmpty) {
                  return Center(
                    child: RefreshIndicator(
                      onRefresh: _onRefresh,
                      child: Stack(
                        children: [
                          ListView(),
                          const Center(
                            child: Text(
                              'Tidak ada pengajuan pinjaman yang ditemukan.',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: _onRefresh,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(Dimens.paddingMedium),
                    itemCount: listPinjamanAdmin.length,
                    itemBuilder: (context, index) {
                      final item = listPinjamanAdmin[index];
                      return ListItemPinjamAdmin(
                        pinjam: item,
                        onActionTap: () => _tinjauPinjam(context, item),
                      );
                    },
                  ),
                );
              },
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}
