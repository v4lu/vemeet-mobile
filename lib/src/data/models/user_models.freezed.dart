// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) {
  return _ImageResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageResponse {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ImageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageResponseCopyWith<ImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResponseCopyWith<$Res> {
  factory $ImageResponseCopyWith(
          ImageResponse value, $Res Function(ImageResponse) then) =
      _$ImageResponseCopyWithImpl<$Res, ImageResponse>;
  @useResult
  $Res call({int id, String url, String createdAt});
}

/// @nodoc
class _$ImageResponseCopyWithImpl<$Res, $Val extends ImageResponse>
    implements $ImageResponseCopyWith<$Res> {
  _$ImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageResponseImplCopyWith<$Res>
    implements $ImageResponseCopyWith<$Res> {
  factory _$$ImageResponseImplCopyWith(
          _$ImageResponseImpl value, $Res Function(_$ImageResponseImpl) then) =
      __$$ImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, String createdAt});
}

/// @nodoc
class __$$ImageResponseImplCopyWithImpl<$Res>
    extends _$ImageResponseCopyWithImpl<$Res, _$ImageResponseImpl>
    implements _$$ImageResponseImplCopyWith<$Res> {
  __$$ImageResponseImplCopyWithImpl(
      _$ImageResponseImpl _value, $Res Function(_$ImageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_$ImageResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageResponseImpl implements _ImageResponse {
  const _$ImageResponseImpl(
      {required this.id, required this.url, required this.createdAt});

  factory _$ImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'ImageResponse(id: $id, url: $url, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, createdAt);

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageResponseImplCopyWith<_$ImageResponseImpl> get copyWith =>
      __$$ImageResponseImplCopyWithImpl<_$ImageResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageResponseImplToJson(
      this,
    );
  }
}

abstract class _ImageResponse implements ImageResponse {
  const factory _ImageResponse(
      {required final int id,
      required final String url,
      required final String createdAt}) = _$ImageResponseImpl;

  factory _ImageResponse.fromJson(Map<String, dynamic> json) =
      _$ImageResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get createdAt;

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageResponseImplCopyWith<_$ImageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  String get awsCognitoId => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  bool get swiperMode => throw _privateConstructorUsedError;
  bool get inboxLocked => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;
  String? get countryFlag => throw _privateConstructorUsedError;
  String? get countryIsoCode => throw _privateConstructorUsedError;
  double? get countryLat => throw _privateConstructorUsedError;
  double? get countryLng => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  double? get cityLat => throw _privateConstructorUsedError;
  double? get cityLng => throw _privateConstructorUsedError;
  ImageResponse? get profileImage => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String username,
      String birthday,
      String awsCognitoId,
      bool verified,
      bool isPrivate,
      bool swiperMode,
      bool inboxLocked,
      bool blocked,
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
      ImageResponse? profileImage});

  $ImageResponseCopyWith<$Res>? get profileImage;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? birthday = null,
    Object? awsCognitoId = null,
    Object? verified = null,
    Object? isPrivate = null,
    Object? swiperMode = null,
    Object? inboxLocked = null,
    Object? blocked = null,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? name = freezed,
    Object? countryName = freezed,
    Object? countryFlag = freezed,
    Object? countryIsoCode = freezed,
    Object? countryLat = freezed,
    Object? countryLng = freezed,
    Object? cityName = freezed,
    Object? cityLat = freezed,
    Object? cityLng = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      awsCognitoId: null == awsCognitoId
          ? _value.awsCognitoId
          : awsCognitoId // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      swiperMode: null == swiperMode
          ? _value.swiperMode
          : swiperMode // ignore: cast_nullable_to_non_nullable
              as bool,
      inboxLocked: null == inboxLocked
          ? _value.inboxLocked
          : inboxLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryFlag: freezed == countryFlag
          ? _value.countryFlag
          : countryFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIsoCode: freezed == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryLat: freezed == countryLat
          ? _value.countryLat
          : countryLat // ignore: cast_nullable_to_non_nullable
              as double?,
      countryLng: freezed == countryLng
          ? _value.countryLng
          : countryLng // ignore: cast_nullable_to_non_nullable
              as double?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityLat: freezed == cityLat
          ? _value.cityLat
          : cityLat // ignore: cast_nullable_to_non_nullable
              as double?,
      cityLng: freezed == cityLng
          ? _value.cityLng
          : cityLng // ignore: cast_nullable_to_non_nullable
              as double?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ImageResponse?,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageResponseCopyWith<$Res>? get profileImage {
    if (_value.profileImage == null) {
      return null;
    }

    return $ImageResponseCopyWith<$Res>(_value.profileImage!, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String birthday,
      String awsCognitoId,
      bool verified,
      bool isPrivate,
      bool swiperMode,
      bool inboxLocked,
      bool blocked,
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
      ImageResponse? profileImage});

  @override
  $ImageResponseCopyWith<$Res>? get profileImage;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? birthday = null,
    Object? awsCognitoId = null,
    Object? verified = null,
    Object? isPrivate = null,
    Object? swiperMode = null,
    Object? inboxLocked = null,
    Object? blocked = null,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? name = freezed,
    Object? countryName = freezed,
    Object? countryFlag = freezed,
    Object? countryIsoCode = freezed,
    Object? countryLat = freezed,
    Object? countryLng = freezed,
    Object? cityName = freezed,
    Object? cityLat = freezed,
    Object? cityLng = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      awsCognitoId: null == awsCognitoId
          ? _value.awsCognitoId
          : awsCognitoId // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      swiperMode: null == swiperMode
          ? _value.swiperMode
          : swiperMode // ignore: cast_nullable_to_non_nullable
              as bool,
      inboxLocked: null == inboxLocked
          ? _value.inboxLocked
          : inboxLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryFlag: freezed == countryFlag
          ? _value.countryFlag
          : countryFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIsoCode: freezed == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryLat: freezed == countryLat
          ? _value.countryLat
          : countryLat // ignore: cast_nullable_to_non_nullable
              as double?,
      countryLng: freezed == countryLng
          ? _value.countryLng
          : countryLng // ignore: cast_nullable_to_non_nullable
              as double?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityLat: freezed == cityLat
          ? _value.cityLat
          : cityLat // ignore: cast_nullable_to_non_nullable
              as double?,
      cityLng: freezed == cityLng
          ? _value.cityLng
          : cityLng // ignore: cast_nullable_to_non_nullable
              as double?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ImageResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.username,
      required this.birthday,
      required this.awsCognitoId,
      required this.verified,
      required this.isPrivate,
      required this.swiperMode,
      required this.inboxLocked,
      required this.blocked,
      this.gender,
      this.bio,
      this.name,
      this.countryName,
      this.countryFlag,
      this.countryIsoCode,
      this.countryLat,
      this.countryLng,
      this.cityName,
      this.cityLat,
      this.cityLng,
      this.profileImage});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String birthday;
  @override
  final String awsCognitoId;
  @override
  final bool verified;
  @override
  final bool isPrivate;
  @override
  final bool swiperMode;
  @override
  final bool inboxLocked;
  @override
  final bool blocked;
  @override
  final String? gender;
  @override
  final String? bio;
  @override
  final String? name;
  @override
  final String? countryName;
  @override
  final String? countryFlag;
  @override
  final String? countryIsoCode;
  @override
  final double? countryLat;
  @override
  final double? countryLng;
  @override
  final String? cityName;
  @override
  final double? cityLat;
  @override
  final double? cityLng;
  @override
  final ImageResponse? profileImage;

  @override
  String toString() {
    return 'User(id: $id, username: $username, birthday: $birthday, awsCognitoId: $awsCognitoId, verified: $verified, isPrivate: $isPrivate, swiperMode: $swiperMode, inboxLocked: $inboxLocked, blocked: $blocked, gender: $gender, bio: $bio, name: $name, countryName: $countryName, countryFlag: $countryFlag, countryIsoCode: $countryIsoCode, countryLat: $countryLat, countryLng: $countryLng, cityName: $cityName, cityLat: $cityLat, cityLng: $cityLng, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.awsCognitoId, awsCognitoId) ||
                other.awsCognitoId == awsCognitoId) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.swiperMode, swiperMode) ||
                other.swiperMode == swiperMode) &&
            (identical(other.inboxLocked, inboxLocked) ||
                other.inboxLocked == inboxLocked) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.countryFlag, countryFlag) ||
                other.countryFlag == countryFlag) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                other.countryIsoCode == countryIsoCode) &&
            (identical(other.countryLat, countryLat) ||
                other.countryLat == countryLat) &&
            (identical(other.countryLng, countryLng) ||
                other.countryLng == countryLng) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.cityLat, cityLat) || other.cityLat == cityLat) &&
            (identical(other.cityLng, cityLng) || other.cityLng == cityLng) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        birthday,
        awsCognitoId,
        verified,
        isPrivate,
        swiperMode,
        inboxLocked,
        blocked,
        gender,
        bio,
        name,
        countryName,
        countryFlag,
        countryIsoCode,
        countryLat,
        countryLng,
        cityName,
        cityLat,
        cityLng,
        profileImage
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String username,
      required final String birthday,
      required final String awsCognitoId,
      required final bool verified,
      required final bool isPrivate,
      required final bool swiperMode,
      required final bool inboxLocked,
      required final bool blocked,
      final String? gender,
      final String? bio,
      final String? name,
      final String? countryName,
      final String? countryFlag,
      final String? countryIsoCode,
      final double? countryLat,
      final double? countryLng,
      final String? cityName,
      final double? cityLat,
      final double? cityLng,
      final ImageResponse? profileImage}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get birthday;
  @override
  String get awsCognitoId;
  @override
  bool get verified;
  @override
  bool get isPrivate;
  @override
  bool get swiperMode;
  @override
  bool get inboxLocked;
  @override
  bool get blocked;
  @override
  String? get gender;
  @override
  String? get bio;
  @override
  String? get name;
  @override
  String? get countryName;
  @override
  String? get countryFlag;
  @override
  String? get countryIsoCode;
  @override
  double? get countryLat;
  @override
  double? get countryLng;
  @override
  String? get cityName;
  @override
  double? get cityLat;
  @override
  double? get cityLng;
  @override
  ImageResponse? get profileImage;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
