import 'package:flutter_app/core/error/failures.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_nasabah_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinjaman_state.freezed.dart';

@freezed
class PinjamanState with _$PinjamanState {
  const factory PinjamanState.initial() = PinjamanInitial;
  const factory PinjamanState.loading() = PinjamanLoading;

  const factory PinjamanState.submissionSuccess({required String message}) =
      PinjamanSubmissionSuccess;

  const factory PinjamanState.failure({required Failure failure}) =
      PinjamanFailure;
  const factory PinjamanState.loadListSuccess({
    required List<PinjamanNasabahEntity> listPinjaman,
  }) = PinjamanLoadListSuccess;
  const factory PinjamanState.loadListAdminSuccess({
    required List<PinjamanAdminEntity> listPinjamanAdmin,
  }) = PinjamanLoadListAdminSuccess;
}
