class ServerException implements Exception {
  final String message;
  const ServerException({this.message = 'Server Error'});
}

class ClientException implements Exception {
  final String message;
  final Map<String, dynamic>? validationErrors;
  const ClientException({required this.message, this.validationErrors});
}

class AuthException implements Exception {
  final String message;
  const AuthException({this.message = 'Unauthorized'});
}

class EmptyException implements Exception {
  final String message;
  const EmptyException({this.message = 'Daftar masih kosong'});
}

class CacheException implements Exception {}
