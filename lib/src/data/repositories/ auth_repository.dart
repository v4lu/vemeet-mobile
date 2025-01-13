import 'package:logger/logger.dart';
import 'package:v_mobile/core/storage/secure_storage_service.dart';
import 'package:v_mobile/src/data/datasources/%20auth_remote_datasource.dart';
import 'package:v_mobile/src/data/models/login_request.dart';

class AuthRepository {
  final logger = Logger();
  final AuthRemoteDataSource _dataSource;
  final SecureStorageService _storage;

  AuthRepository(this._dataSource, this._storage);

  Future<void> login(String email, String password) async {
    final response = await _dataSource.login(
      LoginRequest(
        email: email,
        password: password,
      ),
    );

    final accessExpiryDate = DateTime.fromMillisecondsSinceEpoch(
            (response.accessTokenExpiry * 1000).round())
        .toIso8601String();

    final refreshExpiryDate = DateTime.fromMillisecondsSinceEpoch(
            (response.refreshTokenExpiry * 1000).round())
        .toIso8601String();

    await Future.wait([
      _storage.saveAccessToken(response.accessToken, accessExpiryDate),
      _storage.saveRefreshToken(response.refreshToken, refreshExpiryDate),
      _storage.saveCognitoId(response.cognitoId),
    ]);
  }

  Future<void> refresh() async {
    final refreshToken = await _storage.getRefreshToken();
    final cognitoId = await _storage.getCognitoId();
    if (refreshToken == null || cognitoId == null) {
      throw Exception('No refresh token or cognito ID found');
    }
    final response = await _dataSource.refreshTokens(refreshToken, cognitoId);

    final accessExpiryDate = DateTime.fromMillisecondsSinceEpoch(
            (response.accessTokenExpiry * 1000).round())
        .toIso8601String();

    _storage.saveAccessToken(response.accessToken, accessExpiryDate);
  }

  Future<void> logout() async {
    await _storage.clearAll();
  }

  Future<bool> isAuthenticated() async {
    final accessToken = await _storage.getAccessToken();
    final refreshToken = await _storage.getRefreshToken();
    final cognitoId = await _storage.getCognitoId();

    logger.i('Checking auth status');
    logger.i('Access token: $accessToken');
    logger.i('Refresh token: $refreshToken');
    logger.i('Cognito ID: $cognitoId');

    if (accessToken != null && refreshToken != null && cognitoId != null) {
      return true;
    }

    if (refreshToken != null && cognitoId != null) {
      await refresh();
      return true;
    } else {
      logger.i('Access token missing');
    }

    return false;
  }
}
