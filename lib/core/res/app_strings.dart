abstract class AppStrings {
  static const String appName = 'Aplikasi Pinjaman';

  static const String loginTitle = 'Login Nasabah';
  static const String registerTitle = 'Daftar Akun Baru';
  static const String buttonLogin = 'MASUK';
  static const String buttonRegister = 'DAFTAR';
  static const String linkToRegister = 'Belum punya akun? Daftar di sini.';
  static const String linkToLogin = 'Sudah punya akun? Kembali ke Login.';

  static const String labelUsername = 'Username';
  static const String labelPassword = 'Password';
  static const String labelConfirmPassword = 'Konfirmasi Password';
  static const String labelFullName = 'Nama Lengkap';
  static const String labelNIK = 'Nomor Induk Kependudukan (NIK)';
  static const String labelAddress = 'Alamat';
  static const String labelPhone = 'Nomor Telepon';
  static const String labelLoanAmount = 'Jumlah Pinjaman';

  static const String pinjamListTitle = 'Daftar Pengajuan Pinjaman';
  static const String adminPengajuanListTitle = 'Daftar Pengajuan';

  static const String loading = 'Memuat...';

  static const String jumlahPinjaman = 'Jumlah Pinjaman';
  static const String emptyDataPinjam = 'Anda belum memiliki pengajuan.';
  static const String buttonAjukanPinjamanBaru = 'Ajukan Baru';
  static const String buttonAjukanPinjaman = 'AJUKAN PINJAMAN';

  static const String formPinjamTitle = 'Formulir Pengajuan Pinjaman';

  static const String idrCurrencySymbol = 'IDR';

  static const String tinjauProses = 'Tinjau & Proses';

  static const String tinjauPinjamTitle = 'Tinjau Pengajuan Pinjaman';

  static const String setujui = 'Setujui';

  static const String tolak = 'Tolak';

  static const String catatanAdminHint = 'Catatan Admin (Wajib diisi)';

  static const String inspeksiTitle = 'Detail Inspeksi';

  static String catatanAdmin(String catatanAdmin) =>
      'Catatan Admin: $catatanAdmin';
}
