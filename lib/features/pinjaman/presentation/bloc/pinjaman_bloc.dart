import 'package:flutter_app/features/pinjaman/domain/usecases/ajukan_pinjaman_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/approval_pinjaman_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/get_list_pinjaman_admin_usecase.dart';
import 'package:flutter_app/features/pinjaman/domain/usecases/get_list_pinjaman_nasabah_usecase.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_event.dart';
import 'package:flutter_app/features/pinjaman/presentation/bloc/pinjaman_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PinjamanBloc extends Bloc<PinjamanEvent, PinjamanState> {
  final AjukanPinjamanUsecase ajukanPinjamanUsecase;
  final GetListPinjamanNasabahUsecase getListPinjamanNasabahUsecase;
  final GetListPinjamanAdminUsecase getListPinjamanAdminUsecase;
  final UpdatePinjamanStatusUsecase updatePinjamanStatusUsecase;
  PinjamanBloc({
    required this.ajukanPinjamanUsecase,
    required this.getListPinjamanNasabahUsecase,
    required this.getListPinjamanAdminUsecase,
    required this.updatePinjamanStatusUsecase,
  }) : super(const PinjamanState.initial()) {
    on<SubmissionRequested>(_onSubmissionRequested);
    on<FetchListRequested>(_onFetchListRequested);
    on<FetchListAdminRequested>(_onFetchListAdminRequested);
    on<UpdateStatusRequested>(_onUpdateStatusRequested);
  }
  Future<void> _onSubmissionRequested(
    SubmissionRequested event,
    Emitter<PinjamanState> emit,
  ) async {
    emit(const PinjamanState.loading());
    final params = AjukanPinjamanParams(
      nik: event.nik,
      noTelepon: event.noTelepon,
      alamat: event.alamat,
      jumlahPinjaman: event.jumlahPinjaman,
    );
    final result = await ajukanPinjamanUsecase(params);
    result.fold(
      (failure) {
        emit(const PinjamanState.initial());
        emit(PinjamanState.failure(failure: failure));
      },
      (_) {
        emit(const PinjamanState.initial());
        emit(
          const PinjamanState.submissionSuccess(
            message:
                'Pengajuan pinjaman berhasil diajukan. Menunggu persetujuan admin.',
          ),
        );
        add(const PinjamanEvent.fetchListAdminRequested());
      },
    );
  }

  Future<void> _onFetchListRequested(
    FetchListRequested event,
    Emitter<PinjamanState> emit,
  ) async {
    emit(const PinjamanState.loading());
    final result = await getListPinjamanNasabahUsecase();
    result.fold(
      (failure) {
        emit(PinjamanState.failure(failure: failure));
        emit(const PinjamanState.initial());
      },
      (listPinjaman) {
        emit(PinjamanState.loadListSuccess(listPinjaman: listPinjaman));
      },
    );
  }

  Future<void> _onFetchListAdminRequested(
    FetchListAdminRequested event,
    Emitter<PinjamanState> emit,
  ) async {
    emit(const PinjamanState.loading());
    final result = await getListPinjamanAdminUsecase();
    result.fold(
      (failure) {
        emit(PinjamanState.failure(failure: failure));
        emit(const PinjamanState.initial());
      },
      (listPinjamanAdmin) {
        emit(
          PinjamanState.loadListAdminSuccess(
            listPinjamanAdmin: listPinjamanAdmin,
          ),
        );
      },
    );
  }

  Future<void> _onUpdateStatusRequested(
    UpdateStatusRequested event,
    Emitter<PinjamanState> emit,
  ) async {
    final currentState = state;
    emit(const PinjamanState.loading());
    final result = await updatePinjamanStatusUsecase(event.params);
    result.fold(
      (failure) {
        emit(PinjamanState.failure(failure: failure));
        emit(currentState);
      },
      (message) {
        emit(PinjamanState.submissionSuccess(message: message));
        add(const PinjamanEvent.fetchListAdminRequested());
        emit(currentState);
      },
    );
  }
}
