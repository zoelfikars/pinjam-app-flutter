import 'package:flutter/material.dart';
import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/core/res/app_routes.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_bloc.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_event.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_state.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/nasabah/widgets/list_item_pinjam.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPinjamPagePage extends StatefulWidget {
  const ListPinjamPagePage({super.key});
  @override
  State<ListPinjamPagePage> createState() => _ListPinjamPagePageState();
}

class _ListPinjamPagePageState extends State<ListPinjamPagePage> {
  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  void _onLogoutTap(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.loggedOut());
  }

  Future<void> _onRefresh() async {
    context.read<PinjamanBloc>().add(const PinjamanEvent.fetchListRequested());
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
            AppStrings.pinjamListTitle,
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
                  cacheFailure: (msg) => 'Cache Error: $msg',
                  clientFailure: (msg, _) => 'Client Error: $msg',
                );
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              },
              submissionSuccess: (message) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
                _onRefresh();
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loadListSuccess: (listPinjaman) {
                if (listPinjaman.isEmpty) {
                  return Center(
                    child: RefreshIndicator(
                      onRefresh: _onRefresh,
                      child: Stack(
                        children: [
                          ListView(),
                          const Center(child: Text(AppStrings.emptyDataPinjam)),
                        ],
                      ),
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: _onRefresh,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(Dimens.paddingMedium),
                    itemCount: listPinjaman.length,
                    itemBuilder: (context, index) {
                      final pinjam = listPinjaman[index];
                      return ListItemPinjam(pinjam: pinjam);
                    },
                  ),
                );
              },
              orElse: () {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.formPinjam);
          },
          label: const Text(AppStrings.buttonAjukanPinjamanBaru),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
