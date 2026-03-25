import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../error/exceptions.dart';

@injectable
class ConnectivityInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const NoInternetException(),
          type: DioExceptionType.connectionError,
        ),
      );
    }
    return super.onRequest(options, handler);
  }
}
