import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:v_mobile/src/data/datasources/swiper_remote_datasource.dart';
import 'package:v_mobile/src/data/models/swiper_models.dart';
import 'package:v_mobile/src/data/repositories/swiper_repository.dart';
import 'package:v_mobile/src/presentation/providers/auth_provider.dart';

class SwiperState {
  final List<SwiperPotencialUserProfileResponse> profiles;
  final List<SwiperUserProfileResponse> matches;
  final bool isLoading;
  final String? error;
  final int currentPage;
  final bool hasMorePages;

  SwiperState({
    this.profiles = const [],
    this.matches = const [],
    this.isLoading = false,
    this.error,
    this.currentPage = 0,
    this.hasMorePages = true,
  });

  SwiperState copyWith({
    List<SwiperPotencialUserProfileResponse>? profiles,
    List<SwiperUserProfileResponse>? matches,
    bool? isLoading,
    String? error,
    int? currentPage,
    bool? hasMorePages,
  }) {
    return SwiperState(
      profiles: profiles ?? this.profiles,
      matches: matches ?? this.matches,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentPage: currentPage ?? this.currentPage,
      hasMorePages: hasMorePages ?? this.hasMorePages,
    );
  }
}

class SwiperNotifier extends StateNotifier<SwiperState> {
  final SwiperRepository _repository;
  final logger = Logger();

  SwiperNotifier(this._repository) : super(SwiperState()) {
    loadProfiles();
    loadMatches();
  }

  Future<void> loadProfiles() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      final response = await _repository.getPotentialMatches();

      state = state.copyWith(
        profiles: response.content,
        isLoading: false,
        currentPage: response.pageable.pageNumber,
        hasMorePages: !response.last,
      );
    } catch (e) {
      if (e.toString().contains('404')) {
        state = state.copyWith(isLoading: false, hasMorePages: false);
      } else {
        state = state.copyWith(isLoading: false, error: e.toString());
      }
    }
  }

  Future<void> loadMatches() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      final response = await _repository.getMatches();
      logger.i("loadMatches: $response");
      state = state.copyWith(
        matches: response,
        isLoading: false,
      );
    } catch (e) {
      logger.e(e);

      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> swipe(int userId, bool isRight) async {
    try {
      final direction = isRight ? 'right' : 'left';
      final request = SwipeRequest(
        swipedUserId: userId,
        direction: direction,
      );

      final response = await _repository.createSwipeRequest(request);

      if (response.isMatch) {
        loadMatches();
      }

      final updatedProfiles =
          List<SwiperPotencialUserProfileResponse>.from(state.profiles)
            ..removeWhere((profile) => profile.userId == userId);

      state = state.copyWith(profiles: updatedProfiles);

      if (updatedProfiles.length < 3 && state.hasMorePages) {
        loadProfiles();
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

final swiperRemoteDatasourceProvider = Provider<SwiperRemoteDatasource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return SwiperRemoteDatasource(dioClient);
});

final swiperRepositoryProvider = Provider<SwiperRepository>((ref) {
  final dataSource = ref.watch(swiperRemoteDatasourceProvider);
  return SwiperRepository(dataSource);
});

final swiperProvider =
    StateNotifierProvider<SwiperNotifier, SwiperState>((ref) {
  final repository = ref.watch(swiperRepositoryProvider);
  return SwiperNotifier(repository);
});
