import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'storage_keys.dart';

class SecureStorageService {
  static const _storage = FlutterSecureStorage();

  static const _androidOptions = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  Future<void> saveAccessToken(String token, String expiry) async {
    await Future.wait([
      _storage.write(
        key: StorageKeys.accessToken,
        value: token,
        aOptions: _androidOptions,
      ),
      _storage.write(
        key: StorageKeys.accessTokenExpiry,
        value: expiry,
        aOptions: _androidOptions,
      ),
    ]);
  }

  Future<void> saveRefreshToken(String token, String expiry) async {
    await Future.wait([
      _storage.write(
        key: StorageKeys.refreshToken,
        value: token,
        aOptions: _androidOptions,
      ),
      _storage.write(
        key: StorageKeys.refreshTokenExpiry,
        value: expiry,
        aOptions: _androidOptions,
      ),
    ]);
  }

  Future<void> saveCognitoId(String id) async {
    await _storage.write(
      key: StorageKeys.cognitoId,
      value: id,
      aOptions: _androidOptions,
    );
  }

  Future<String?> getAccessToken() async {
    final token = await _storage.read(
      key: StorageKeys.accessToken,
      aOptions: _androidOptions,
    );
    final expiry = await _storage.read(
      key: StorageKeys.accessTokenExpiry,
      aOptions: _androidOptions,
    );

    if (token != null && expiry != null) {
      final expiryDate = DateTime.parse(expiry);
      if (DateTime.now().isBefore(expiryDate)) {
        return token;
      } else {
        await _clearAccessToken();
        return null;
      }
    }
    return null;
  }

  Future<String?> getRefreshToken() async {
    final token = await _storage.read(
      key: StorageKeys.refreshToken,
      aOptions: _androidOptions,
    );
    final expiry = await _storage.read(
      key: StorageKeys.refreshTokenExpiry,
      aOptions: _androidOptions,
    );

    if (token != null && expiry != null) {
      final expiryDate = DateTime.parse(expiry);
      if (DateTime.now().isBefore(expiryDate)) {
        return token;
      } else {
        await _clearRefreshToken();
        return null;
      }
    }
    return null;
  }

  Future<String?> getCognitoId() async {
    return await _storage.read(
      key: StorageKeys.cognitoId,
      aOptions: _androidOptions,
    );
  }

  Future<bool> isAccessTokenValid() async {
    final expiry = await _storage.read(
      key: StorageKeys.accessTokenExpiry,
      aOptions: _androidOptions,
    );

    if (expiry != null) {
      final expiryDate = DateTime.parse(expiry);
      return DateTime.now().isBefore(expiryDate);
    }
    return false;
  }

  Future<bool> isRefreshTokenValid() async {
    final expiry = await _storage.read(
      key: StorageKeys.refreshTokenExpiry,
      aOptions: _androidOptions,
    );

    if (expiry != null) {
      final expiryDate = DateTime.parse(expiry);
      return DateTime.now().isBefore(expiryDate);
    }
    return false;
  }

  Future<void> _clearAccessToken() async {
    await Future.wait([
      _storage.delete(key: StorageKeys.accessToken, aOptions: _androidOptions),
      _storage.delete(
          key: StorageKeys.accessTokenExpiry, aOptions: _androidOptions),
    ]);
  }

  Future<void> _clearRefreshToken() async {
    await Future.wait([
      _storage.delete(key: StorageKeys.refreshToken, aOptions: _androidOptions),
      _storage.delete(
          key: StorageKeys.refreshTokenExpiry, aOptions: _androidOptions),
    ]);
  }

  Future<void> clearAll() async {
    await _storage.deleteAll(aOptions: _androidOptions);
  }
}
