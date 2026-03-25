import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../config/api_config.dart';
import '../config/api_keys.dart';
import 'interceptors/connectivity_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

@lazySingleton
class DioClient {
  late final Dio _dio;

  DioClient(
    ConnectivityInterceptor connectivityInterceptor,
    LoggingInterceptor loggingInterceptor,
  ) {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.deepSeekBaseUrl,
        connectTimeout: ApiConfig.connectTimeout,
        receiveTimeout: ApiConfig.receiveTimeout,
        sendTimeout: ApiConfig.sendTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ApiKeys.deepSeekApiKey}',
        },
      ),
    );

    _dio.interceptors.addAll([
      connectivityInterceptor,
      loggingInterceptor,
    ]);
  }

  Dio get dio => _dio;

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }
}
