// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseImpl _$$ErrorResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorResponseImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ErrorResponseImplToJson(_$ErrorResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'errors': instance.errors,
    };

_$ErrorDetailImpl _$$ErrorDetailImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDetailImpl(
      path: json['path'] as String,
      error: json['error'] as String,
    );

Map<String, dynamic> _$$ErrorDetailImplToJson(_$ErrorDetailImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'error': instance.error,
    };
