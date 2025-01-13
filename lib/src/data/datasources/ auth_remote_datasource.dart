import 'package:dio/dio.dart';
import 'package:v_mobile/core/api/api_endpoints.dart';
import 'package:v_mobile/core/api/dio_client.dart';
import 'package:v_mobile/src/data/models/auth_models.dart';
import 'package:v_mobile/src/data/models/login_request.dart';
import 'package:v_mobile/src/data/models/login_response.dart';

class AuthRemoteDataSource {
  final DioClient _dioClient;

  AuthRemoteDataSource(this._dioClient);

  Future<LoginResponse> login(LoginRequest request) async {
    return await _dioClient.request<LoginResponse>(
      path: ApiEndpoints.login,
      method: 'POST',
      data: request.toJson(),
      parser: (data) => LoginResponse.fromJson(data),
    );
  }

  Future<TokenResponse> refreshTokens(
      String refreshToken, String cognitoId) async {
    return await _dioClient.request<TokenResponse>(
      path: ApiEndpoints.refreshToken,
      method: 'POST',
      queryParameters: {'id': cognitoId},
      options: Options(
        headers: {'Refresh-Token-X': refreshToken},
        validateStatus: (status) => status != null && status < 500,
      ),
      parser: (data) => TokenResponse.fromJson(data),
    );
  }
}
