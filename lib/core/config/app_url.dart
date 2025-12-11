class AppUrl {
  static const String baseUrl = 'https://pinjaman.literasearch.site/api';

  static const String loginEndpoint = '/auth/login';
  static const String registerEndpoint = '/auth/register';
  static const String logoutEndpoint = '/auth/logout';
  static const String userEndpoint = '/auth/user';

  static const String ajukanPinjamanEndpoint = '/pinjaman/ajukan';
  static const String daftarPinjamanEndpoint = '/pinjaman/list';
  static const String approvalPinjamanEndpoint = '/pinjaman/{id}/approval';
  static const String nasabahPinjamanEndpoint = '/pinjaman/nasabah';

}
