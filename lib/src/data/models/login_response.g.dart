// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      accessToken: json['accessToken'] as String,
      accessTokenExpiry: (json['accessTokenExpiry'] as num).toDouble(),
      refreshToken: json['refreshToken'] as String,
      refreshTokenExpiry: (json['refreshTokenExpiry'] as num).toDouble(),
      cognitoId: json['cognitoId'] as String,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiry': instance.accessTokenExpiry,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiry': instance.refreshTokenExpiry,
      'cognitoId': instance.cognitoId,
    };
