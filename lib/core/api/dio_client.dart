import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:v_mobile/core/storage/secure_storage_service.dart';
import 'api_endpoints.dart';

class DioClient {
  final Dio _dio;
  final SecureStorageService _storage;

  DioClient(this._storage) : _dio = Dio() {
    _dio.options = BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Content-Type': 'application/json'},
    );

    _dio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ),
      _authInterceptor(),
    ]);
  }

  Interceptor _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await _storage.getAccessToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          final refreshToken = await _storage.getRefreshToken();
          final String? cognitoId = await _storage.getCognitoId();

          if (refreshToken != null && cognitoId != null) {}
        }
        handler.next(error);
      },
    );
  }

  Dio get dio => _dio;
}
