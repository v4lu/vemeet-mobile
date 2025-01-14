import 'package:v_mobile/core/api/api_endpoints.dart';
import 'package:v_mobile/core/api/dio_client.dart';
import 'package:v_mobile/src/data/models/swiper_models.dart';

class SwiperRemoteDatasource {
  final DioClient _dioClient;

  SwiperRemoteDatasource(this._dioClient);

  Future<SwipeResponse> createSwipeRequest(SwipeRequest request) async {
    return await _dioClient.request<SwipeResponse>(
      path: ApiEndpoints.createSwipe,
      method: 'POST',
      data: request.toJson(),
      parser: (data) => SwipeResponse.fromJson(data),
    );
  }

  Future<SwiperUserProfileResponse> updateSwiperProfile(
      SwiperUserProfileRequest request) async {
    return await _dioClient.request<SwiperUserProfileResponse>(
      path: ApiEndpoints.updateSwiperProfile,
      method: 'PATCH',
      data: request.toJson(),
      parser: (data) => SwiperUserProfileResponse.fromJson(data),
    );
  }

  Future<SwiperUserProfileResponse> getSwiperProfileByID(int id) async {
    return await _dioClient.request<SwiperUserProfileResponse>(
      path: '${ApiEndpoints.getSwipeProfile}/$id',
      parser: (data) => SwiperUserProfileResponse.fromJson(data),
    );
  }

  Future<PotentialSwipePagableResponse> getPotentialMatches() async {
    return await _dioClient.request<PotentialSwipePagableResponse>(
      path: ApiEndpoints.getPotentialMatches,
      parser: (data) => PotentialSwipePagableResponse.fromJson(data),
    );
  }

  Future<List<SwiperUserProfileResponse>> getMatches() async {
    return await _dioClient.request<List<SwiperUserProfileResponse>>(
      path: ApiEndpoints.getMatches,
      parser: (dynamic data) {
        if (data == null) return [];

        // Convert the data to List<dynamic>
        final List<dynamic> matchesList = List<dynamic>.from(data);

        // Map each item to SwiperUserProfileResponse
        return matchesList
            .map((dynamic item) => SwiperUserProfileResponse.fromJson(
                item as Map<String, dynamic>))
            .toList();
      },
    );
  }
}
