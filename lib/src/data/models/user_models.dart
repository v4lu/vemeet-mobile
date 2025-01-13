import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_models.freezed.dart';
part 'user_models.g.dart';

@freezed
class ImageResponse with _$ImageResponse {
  const factory ImageResponse({
    required int id,
    required String url,
    required String createdAt,
  }) = _ImageResponse;

  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String birthday,
    required String awsCognitoId,
    required bool verified,
    required bool isPrivate,
    required bool swiperMode,
    required bool inboxLocked,
    required bool blocked,
    String? gender,
    String? bio,
    String? name,
    String? countryName,
    String? countryFlag,
    String? countryIsoCode,
    double? countryLat,
    double? countryLng,
    String? cityName,
    double? cityLat,
    double? cityLng,
    ImageResponse? profileImage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
