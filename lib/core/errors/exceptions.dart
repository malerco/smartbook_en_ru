abstract class AppException implements Exception {
  const AppException([this.message]);
  final String? message;
  
  @override
  String toString() => message ?? runtimeType.toString();
}

class NoInternetException extends AppException {
  const NoInternetException() : super('No internet connection');
}

class ServerException extends AppException {
  const ServerException([super.message]);
}

class TimeoutException extends AppException {
  const TimeoutException() : super('Request timed out');
}

class TranslationException extends AppException {
  const TranslationException([super.message]);
}

class CacheException extends AppException {
  const CacheException([super.message]);
}
