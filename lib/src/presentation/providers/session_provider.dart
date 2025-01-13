import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:v_mobile/src/data/datasources/user_remote_datasource.dart';
import 'package:v_mobile/src/data/models/user_models.dart';
import 'package:v_mobile/src/data/models/user_state_models.dart';
import 'package:v_mobile/src/data/repositories/user_repository.dart';
import 'package:v_mobile/src/presentation/providers/auth_provider.dart';

class UserNotifier extends StateNotifier<UserState> {
  final UserRepository _repository;

  UserNotifier(this._repository) : super(const UserState()) {
    fetchUser();
  }

  Future<void> fetchUser() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      final user = await _repository.fetchUser();
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> updateUser(User updatedUser) async {
    state = state.copyWith(user: updatedUser);
  }
}

final userRemoteDataSourceProvider = Provider<UserRemoteDatasource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return UserRemoteDatasource(dioClient);
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final dataSource = ref.watch(userRemoteDataSourceProvider);
  return UserRepository(dataSource);
});

final userProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  final repository = ref.watch(userRepositoryProvider);
  return UserNotifier(repository);
});
