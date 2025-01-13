import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:v_mobile/core/api/dio_client.dart';
import 'package:v_mobile/core/storage/secure_storage_service.dart';
import 'package:v_mobile/src/data/datasources/%20auth_remote_datasource.dart';
import 'package:v_mobile/src/data/models/auth_state.dart';
import 'package:v_mobile/src/data/repositories/%20auth_repository.dart';

final secureStorageProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return DioClient(secureStorage);
});

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return AuthRemoteDataSource(dioClient);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final authRemoteDataSource = ref.watch(authRemoteDataSourceProvider);
  final secureStorage = ref.watch(secureStorageProvider);
  return AuthRepository(authRemoteDataSource, secureStorage);
});

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthNotifier(repository);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _repository;

  AuthNotifier(this._repository) : super(const AuthState());

  Future<void> login(String email, String password) async {
    try {
      state = state.copyWith(
        isLoading: true,
        error: null,
      );

      await _repository.login(email, password);

      state = state.copyWith(
        isLoading: false,
        isAuthenticated: true,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        isAuthenticated: false,
      );
    }
  }

  Future<void> logout() async {
    try {
      state = state.copyWith(isLoading: true);
      await _repository.logout();
      state = const AuthState();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> checkAuthStatus() async {
    try {
      final isAuthenticated = await _repository.isAuthenticated();
      state = state.copyWith(isAuthenticated: isAuthenticated);
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isAuthenticated: false,
      );
    }
  }
}
