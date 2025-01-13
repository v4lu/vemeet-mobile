import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_models.freezed.dart';
part 'error_models.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    required int statusCode,
    required String message,
    List<ErrorDetail>? errors,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

@freezed
class ErrorDetail with _$ErrorDetail {
  const factory ErrorDetail({
    required String path,
    required String error,
  }) = _ErrorDetail;

  factory ErrorDetail.fromJson(Map<String, dynamic> json) =>
      _$ErrorDetailFromJson(json);
}
