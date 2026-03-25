abstract class ApiConfig {
  static const String deepSeekBaseUrl = 'https://deepseek.beskisheff.workers.dev';
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 60);
  static const Duration sendTimeout = Duration(seconds: 30);
}
