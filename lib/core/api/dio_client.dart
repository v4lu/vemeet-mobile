import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:v_mobile/src/data/models/auth_models.dart';
import 'package:v_mobile/core/storage/secure_storage_service.dart';
import 'package:v_mobile/src/data/models/error_models.dart';
import 'api_endpoints.dart';

class DioClient {
  final Dio _dio;
  final Logger _logger = Logger();
  final SecureStorageService _storage;

  DioClient(this._storage) : _dio = Dio() {
    _initializeDio();
  }

  void _initializeDio() {
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
      _createAuthInterceptor(),
      _createErrorInterceptor(),
    ]);
  }

  Interceptor _createAuthInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await _storage.getAccessToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    );
  }

  Interceptor _createErrorInterceptor() {
    return InterceptorsWrapper(
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          try {
            final newToken = await _refreshToken();
            if (newToken != null) {
              final opts = error.requestOptions;
              opts.headers['Authorization'] = 'Bearer $newToken';
              final response = await _dio.fetch(opts);
              return handler.resolve(response);
            }
          } catch (e) {
            _logger.e('Token refresh failed', error: e);
            await _storage.clearAll();
          }
        }
        return handler.next(error);
      },
    );
  }

  Future<String?> _refreshToken() async {
    try {
      final refreshToken = await _storage.getRefreshToken();
      final cognitoId = await _storage.getCognitoId();

      if (refreshToken == null || cognitoId == null) {
        return null;
      }

      final response = await _dio.post<Map<String, dynamic>>(
        ApiEndpoints.refreshToken,
        queryParameters: {'id': cognitoId},
        options: Options(
          headers: {'Refresh-Token-X': refreshToken},
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final tokenResponse = TokenResponse.fromJson(response.data!);
        final expiryDate = DateTime.fromMillisecondsSinceEpoch(
          (tokenResponse.accessTokenExpiry * 1000).round(),
        ).toIso8601String();

        await _storage.saveAccessToken(
          tokenResponse.accessToken,
          expiryDate,
        );

        return tokenResponse.accessToken;
      }
    } catch (e) {
      _logger.e('Error refreshing token', error: e);
    }
    return null;
  }

  Future<T> request<T>({
    required String path,
    String method = 'GET',
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
    required T Function(dynamic) parser,
  }) async {
    try {
      final response = await _dio.request<dynamic>(
        path,
        queryParameters: queryParameters,
        data: data,
        options: options?.copyWith(method: method) ?? Options(method: method),
      );

      if (response.statusCode == 200 && response.data != null) {
        return parser(response.data);
      }

      throw ErrorResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      _logger.e('DioException:', error: e);
      if (e.response?.data != null) {
        if (e.response!.data is Map<String, dynamic>) {
          throw ErrorResponse.fromJson(e.response!.data);
        }
      }
      throw ErrorResponse(
        message: e.message ?? 'Network error occurred',
        statusCode: e.response?.statusCode ?? 500,
      );
    }
  }
}
