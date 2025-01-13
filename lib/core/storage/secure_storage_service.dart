import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'storage_keys.dart';

class SecureStorageService {
  static const _storage = FlutterSecureStorage();

  static const _androidOptions = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  Future<void> saveAccessToken(String token) async {
    await _storage.write(
      key: StorageKeys.accessToken,
      value: token,
      aOptions: _androidOptions,
    );
  }

  Future<void> saveRefreshToken(String token) async {
    await _storage.write(
      key: StorageKeys.refreshToken,
      value: token,
      aOptions: _androidOptions,
    );
  }

  Future<void> saveCognitoId(String id) async {
    await _storage.write(
      key: StorageKeys.cognitoId,
      value: id,
      aOptions: _androidOptions,
    );
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(
      key: StorageKeys.accessToken,
      aOptions: _androidOptions,
    );
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(
      key: StorageKeys.refreshToken,
      aOptions: _androidOptions,
    );
  }

  Future<String?> getCognitoId() async {
    return await _storage.read(
      key: StorageKeys.cognitoId,
      aOptions: _androidOptions,
    );
  }

  Future<void> clearAll() async {
    await _storage.deleteAll(aOptions: _androidOptions);
  }
}
