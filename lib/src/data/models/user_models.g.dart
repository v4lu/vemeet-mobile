// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageResponseImpl _$$ImageResponseImplFromJson(Map<String, dynamic> json) =>
    _$ImageResponseImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ImageResponseImplToJson(_$ImageResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'createdAt': instance.createdAt,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      birthday: json['birthday'] as String,
      awsCognitoId: json['awsCognitoId'] as String,
      verified: json['verified'] as bool,
      isPrivate: json['isPrivate'] as bool,
      swiperMode: json['swiperMode'] as bool,
      inboxLocked: json['inboxLocked'] as bool,
      blocked: json['blocked'] as bool,
      gender: json['gender'] as String?,
      bio: json['bio'] as String?,
      name: json['name'] as String?,
      countryName: json['countryName'] as String?,
      countryFlag: json['countryFlag'] as String?,
      countryIsoCode: json['countryIsoCode'] as String?,
      countryLat: (json['countryLat'] as num?)?.toDouble(),
      countryLng: (json['countryLng'] as num?)?.toDouble(),
      cityName: json['cityName'] as String?,
      cityLat: (json['cityLat'] as num?)?.toDouble(),
      cityLng: (json['cityLng'] as num?)?.toDouble(),
      profileImage: json['profileImage'] == null
          ? null
          : ImageResponse.fromJson(
              json['profileImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'birthday': instance.birthday,
      'awsCognitoId': instance.awsCognitoId,
      'verified': instance.verified,
      'isPrivate': instance.isPrivate,
      'swiperMode': instance.swiperMode,
      'inboxLocked': instance.inboxLocked,
      'blocked': instance.blocked,
      'gender': instance.gender,
      'bio': instance.bio,
      'name': instance.name,
      'countryName': instance.countryName,
      'countryFlag': instance.countryFlag,
      'countryIsoCode': instance.countryIsoCode,
      'countryLat': instance.countryLat,
      'countryLng': instance.countryLng,
      'cityName': instance.cityName,
      'cityLat': instance.cityLat,
      'cityLng': instance.cityLng,
      'profileImage': instance.profileImage,
    };
