// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return _TokenResponse.fromJson(json);
}

/// @nodoc
mixin _$TokenResponse {
  String get accessToken => throw _privateConstructorUsedError;
  double get accessTokenExpiry => throw _privateConstructorUsedError;

  /// Serializes this TokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenResponseCopyWith<TokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResponseCopyWith<$Res> {
  factory $TokenResponseCopyWith(
          TokenResponse value, $Res Function(TokenResponse) then) =
      _$TokenResponseCopyWithImpl<$Res, TokenResponse>;
  @useResult
  $Res call({String accessToken, double accessTokenExpiry});
}

/// @nodoc
class _$TokenResponseCopyWithImpl<$Res, $Val extends TokenResponse>
    implements $TokenResponseCopyWith<$Res> {
  _$TokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? accessTokenExpiry = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpiry: null == accessTokenExpiry
          ? _value.accessTokenExpiry
          : accessTokenExpiry // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenResponseImplCopyWith<$Res>
    implements $TokenResponseCopyWith<$Res> {
  factory _$$TokenResponseImplCopyWith(
          _$TokenResponseImpl value, $Res Function(_$TokenResponseImpl) then) =
      __$$TokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, double accessTokenExpiry});
}

/// @nodoc
class __$$TokenResponseImplCopyWithImpl<$Res>
    extends _$TokenResponseCopyWithImpl<$Res, _$TokenResponseImpl>
    implements _$$TokenResponseImplCopyWith<$Res> {
  __$$TokenResponseImplCopyWithImpl(
      _$TokenResponseImpl _value, $Res Function(_$TokenResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? accessTokenExpiry = null,
  }) {
    return _then(_$TokenResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpiry: null == accessTokenExpiry
          ? _value.accessTokenExpiry
          : accessTokenExpiry // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenResponseImpl implements _TokenResponse {
  const _$TokenResponseImpl(
      {required this.accessToken, required this.accessTokenExpiry});

  factory _$TokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenResponseImplFromJson(json);

  @override
  final String accessToken;
  @override
  final double accessTokenExpiry;

  @override
  String toString() {
    return 'TokenResponse(accessToken: $accessToken, accessTokenExpiry: $accessTokenExpiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.accessTokenExpiry, accessTokenExpiry) ||
                other.accessTokenExpiry == accessTokenExpiry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, accessTokenExpiry);

  /// Create a copy of TokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenResponseImplCopyWith<_$TokenResponseImpl> get copyWith =>
      __$$TokenResponseImplCopyWithImpl<_$TokenResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenResponseImplToJson(
      this,
    );
  }
}

abstract class _TokenResponse implements TokenResponse {
  const factory _TokenResponse(
      {required final String accessToken,
      required final double accessTokenExpiry}) = _$TokenResponseImpl;

  factory _TokenResponse.fromJson(Map<String, dynamic> json) =
      _$TokenResponseImpl.fromJson;

  @override
  String get accessToken;
  @override
  double get accessTokenExpiry;

  /// Create a copy of TokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenResponseImplCopyWith<_$TokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
