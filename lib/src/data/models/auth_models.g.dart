// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenResponseImpl _$$TokenResponseImplFromJson(Map<String, dynamic> json) =>
    _$TokenResponseImpl(
      accessToken: json['accessToken'] as String,
      accessTokenExpiry: (json['accessTokenExpiry'] as num).toDouble(),
    );

Map<String, dynamic> _$$TokenResponseImplToJson(_$TokenResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiry': instance.accessTokenExpiry,
    };
