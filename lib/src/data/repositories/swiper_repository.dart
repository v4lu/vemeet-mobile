import 'package:v_mobile/src/data/datasources/swiper_remote_datasource.dart';
import 'package:v_mobile/src/data/models/swiper_models.dart';

class SwiperRepository {
  final SwiperRemoteDatasource _dataSource;

  SwiperRepository(this._dataSource);

  Future<SwipeResponse> createSwipeRequest(SwipeRequest request) async {
    return await _dataSource.createSwipeRequest(request);
  }

  Future<SwiperUserProfileResponse> updateSwiperProfile(
      SwiperUserProfileRequest request) async {
    return await _dataSource.updateSwiperProfile(request);
  }

  Future<SwiperUserProfileResponse> getSwiperProfileByID(int id) async {
    return await _dataSource.getSwiperProfileByID(id);
  }

  Future<PotentialSwipePagableResponse> getPotentialMatches() async {
    return await _dataSource.getPotentialMatches();
  }

  Future<List<SwiperUserProfileResponse>> getMatches() async {
    return await _dataSource.getMatches();
  }
}
