import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      log('┌──────────────────────────────────────────');
      log('│ 📤 REQUEST: ${options.method} ${options.uri}');
      log('│ Headers: ${options.headers}');
      if (options.data != null) {
        log('│ Body: ${options.data.toString().substring(0, (options.data.toString().length > 500 ? 500 : options.data.toString().length))}...');
      }
      log('└──────────────────────────────────────────');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      log('┌──────────────────────────────────────────');
      log('│ ✅ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}');
      log('│ Data: ${response.data.toString().substring(0, (response.data.toString().length > 500 ? 500 : response.data.toString().length))}...');
      log('└──────────────────────────────────────────');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      log('┌──────────────────────────────────────────');
      log('│ ❌ ERROR: ${err.type} ${err.requestOptions.uri}');
      log('│ Message: ${err.message}');
      log('│ Response: ${err.response?.data}');
      log('└──────────────────────────────────────────');
    }
    super.onError(err, handler);
  }
}
