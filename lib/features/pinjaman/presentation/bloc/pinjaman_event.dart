import 'package:flutter_app/features/pinjaman/domain/usecases/approval_pinjaman_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinjaman_event.freezed.dart';

@freezed
abstract class PinjamanEvent with _$PinjamanEvent {
  const factory PinjamanEvent.submissionRequested({
    required String nik,
    required String noTelepon,
    required String alamat,
    required int jumlahPinjaman,
  }) = SubmissionRequested;
  const factory PinjamanEvent.fetchListRequested() = FetchListRequested;
  const factory PinjamanEvent.fetchListAdminRequested() =
      FetchListAdminRequested;
  const factory PinjamanEvent.updateStatusRequested({
    required UpdatePinjamanParams params,
  }) = UpdateStatusRequested;
}
