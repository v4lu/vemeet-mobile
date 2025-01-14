import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_mobile/src/data/models/user_models.dart';

part 'swiper_models.freezed.dart';
part 'swiper_models.g.dart';

@freezed
class Sort with _$Sort {
  const factory Sort({
    required bool sorted,
    required bool unsorted,
    required bool empty,
  }) = _Sort;

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}

@freezed
class Pageable with _$Pageable {
  const factory Pageable({
    required int pageNumber,
    required int pageSize,
    required Sort sort,
    required int offset,
    required bool paged,
    required bool unpaged,
  }) = _Pageable;

  factory Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);
}

@freezed
class SwiperPreferencesResponse with _$SwiperPreferencesResponse {
  const factory SwiperPreferencesResponse({
    required int id,
    required int userId,
    required int minAge,
    required int maxAge,
    required String preferredGender,
    required int maxDistance,
  }) = _SwiperPreferencesResponse;

  factory SwiperPreferencesResponse.fromJson(Map<String, dynamic> json) =>
      _$SwiperPreferencesResponseFromJson(json);
}

@freezed
class SwiperPreferencesRequest with _$SwiperPreferencesRequest {
  const factory SwiperPreferencesRequest({
    required int minAge,
    required int maxAge,
    required String preferredGender,
    required int maxDistance,
  }) = _SwiperPreferencesRequest;

  factory SwiperPreferencesRequest.fromJson(Map<String, dynamic> json) =>
      _$SwiperPreferencesRequestFromJson(json);
}

@freezed
class SwipeRequest with _$SwipeRequest {
  const factory SwipeRequest({
    required int swipedUserId,
    required String direction,
  }) = _SwipeRequest;

  factory SwipeRequest.fromJson(Map<String, dynamic> json) =>
      _$SwipeRequestFromJson(json);
}

@freezed
class SwipeResponse with _$SwipeResponse {
  const factory SwipeResponse({
    required int id,
    required int swiperId,
    required int swipedId,
    required String direction,
    required String createdAt,
    required bool isMatch,
  }) = _SwipeResponse;

  factory SwipeResponse.fromJson(Map<String, dynamic> json) =>
      _$SwipeResponseFromJson(json);
}

@freezed
class SwiperUserProfileResponse with _$SwiperUserProfileResponse {
  const factory SwiperUserProfileResponse({
    required int id,
    required int userId,
    required String? description,
    required String? mainImageUrl,
    required List<String> otherImages,
    required double createdAt,
    required double updatedAt,
    required User user,
  }) = _SwiperUserProfileResponse;

  factory SwiperUserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$SwiperUserProfileResponseFromJson(json);
}

@freezed
class SwiperUserProfileRequest with _$SwiperUserProfileRequest {
  const factory SwiperUserProfileRequest({
    required String? description,
    required String? mainImageUrl,
    required List<String> otherImages,
  }) = _SwiperUserProfileRequest;

  factory SwiperUserProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$SwiperUserProfileRequestFromJson(json);
}

@freezed
class SwiperPotencialUserProfileResponse
    with _$SwiperPotencialUserProfileResponse {
  const factory SwiperPotencialUserProfileResponse({
    required int id,
    required int userId,
    required String? description,
    required String? mainImageUrl,
    required List<String> otherImages,
    required double distance,
    required User user,
  }) = _SwiperPotencialUserProfileResponse;

  factory SwiperPotencialUserProfileResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SwiperPotencialUserProfileResponseFromJson(json);
}

@freezed
class PotentialSwipePagableResponse with _$PotentialSwipePagableResponse {
  const factory PotentialSwipePagableResponse({
    required List<SwiperPotencialUserProfileResponse> content,
    required Pageable pageable,
    required int totalPages,
    required int totalElements,
    required bool last,
    required bool first,
    required int size,
    required int number,
    required Sort sort,
    required int numberOfElements,
    required bool empty,
  }) = _PotentialSwipePagableResponse;

  factory PotentialSwipePagableResponse.fromJson(Map<String, dynamic> json) =>
      _$PotentialSwipePagableResponseFromJson(json);
}
