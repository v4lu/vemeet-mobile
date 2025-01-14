// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swiper_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sort _$SortFromJson(Map<String, dynamic> json) {
  return _Sort.fromJson(json);
}

/// @nodoc
mixin _$Sort {
  bool get sorted => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  /// Serializes this Sort to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res, Sort>;
  @useResult
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class _$SortCopyWithImpl<$Res, $Val extends Sort>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = null,
    Object? unsorted = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$SortCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = null,
    Object? unsorted = null,
    Object? empty = null,
  }) {
    return _then(_$SortImpl(
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortImpl implements _Sort {
  const _$SortImpl(
      {required this.sorted, required this.unsorted, required this.empty});

  factory _$SortImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortImplFromJson(json);

  @override
  final bool sorted;
  @override
  final bool unsorted;
  @override
  final bool empty;

  @override
  String toString() {
    return 'Sort(sorted: $sorted, unsorted: $unsorted, empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sorted, unsorted, empty);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortImplToJson(
      this,
    );
  }
}

abstract class _Sort implements Sort {
  const factory _Sort(
      {required final bool sorted,
      required final bool unsorted,
      required final bool empty}) = _$SortImpl;

  factory _Sort.fromJson(Map<String, dynamic> json) = _$SortImpl.fromJson;

  @override
  bool get sorted;
  @override
  bool get unsorted;
  @override
  bool get empty;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  bool get unpaged => throw _privateConstructorUsedError;

  /// Serializes this Pageable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res, Pageable>;
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      Sort sort,
      int offset,
      bool paged,
      bool unpaged});

  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableCopyWithImpl<$Res, $Val extends Pageable>
    implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? sort = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageableImplCopyWith<$Res>
    implements $PageableCopyWith<$Res> {
  factory _$$PageableImplCopyWith(
          _$PageableImpl value, $Res Function(_$PageableImpl) then) =
      __$$PageableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      Sort sort,
      int offset,
      bool paged,
      bool unpaged});

  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$PageableImplCopyWithImpl<$Res>
    extends _$PageableCopyWithImpl<$Res, _$PageableImpl>
    implements _$$PageableImplCopyWith<$Res> {
  __$$PageableImplCopyWithImpl(
      _$PageableImpl _value, $Res Function(_$PageableImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? sort = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_$PageableImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableImpl implements _Pageable {
  const _$PageableImpl(
      {required this.pageNumber,
      required this.pageSize,
      required this.sort,
      required this.offset,
      required this.paged,
      required this.unpaged});

  factory _$PageableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableImplFromJson(json);

  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final Sort sort;
  @override
  final int offset;
  @override
  final bool paged;
  @override
  final bool unpaged;

  @override
  String toString() {
    return 'Pageable(pageNumber: $pageNumber, pageSize: $pageSize, sort: $sort, offset: $offset, paged: $paged, unpaged: $unpaged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pageNumber, pageSize, sort, offset, paged, unpaged);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      __$$PageableImplCopyWithImpl<_$PageableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableImplToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  const factory _Pageable(
      {required final int pageNumber,
      required final int pageSize,
      required final Sort sort,
      required final int offset,
      required final bool paged,
      required final bool unpaged}) = _$PageableImpl;

  factory _Pageable.fromJson(Map<String, dynamic> json) =
      _$PageableImpl.fromJson;

  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  Sort get sort;
  @override
  int get offset;
  @override
  bool get paged;
  @override
  bool get unpaged;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SwiperPreferencesResponse _$SwiperPreferencesResponseFromJson(
    Map<String, dynamic> json) {
  return _SwiperPreferencesResponse.fromJson(json);
}

/// @nodoc
mixin _$SwiperPreferencesResponse {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get minAge => throw _privateConstructorUsedError;
  int get maxAge => throw _privateConstructorUsedError;
  String get preferredGender => throw _privateConstructorUsedError;
  int get maxDistance => throw _privateConstructorUsedError;

  /// Serializes this SwiperPreferencesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwiperPreferencesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwiperPreferencesResponseCopyWith<SwiperPreferencesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwiperPreferencesResponseCopyWith<$Res> {
  factory $SwiperPreferencesResponseCopyWith(SwiperPreferencesResponse value,
          $Res Function(SwiperPreferencesResponse) then) =
      _$SwiperPreferencesResponseCopyWithImpl<$Res, SwiperPreferencesResponse>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int minAge,
      int maxAge,
      String preferredGender,
      int maxDistance});
}

/// @nodoc
class _$SwiperPreferencesResponseCopyWithImpl<$Res,
        $Val extends SwiperPreferencesResponse>
    implements $SwiperPreferencesResponseCopyWith<$Res> {
  _$SwiperPreferencesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwiperPreferencesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? minAge = null,
    Object? maxAge = null,
    Object? preferredGender = null,
    Object? maxDistance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      preferredGender: null == preferredGender
          ? _value.preferredGender
          : preferredGender // ignore: cast_nullable_to_non_nullable
              as String,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwiperPreferencesResponseImplCopyWith<$Res>
    implements $SwiperPreferencesResponseCopyWith<$Res> {
  factory _$$SwiperPreferencesResponseImplCopyWith(
          _$SwiperPreferencesResponseImpl value,
          $Res Function(_$SwiperPreferencesResponseImpl) then) =
      __$$SwiperPreferencesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int minAge,
      int maxAge,
      String preferredGender,
      int maxDistance});
}

/// @nodoc
class __$$SwiperPreferencesResponseImplCopyWithImpl<$Res>
    extends _$SwiperPreferencesResponseCopyWithImpl<$Res,
        _$SwiperPreferencesResponseImpl>
    implements _$$SwiperPreferencesResponseImplCopyWith<$Res> {
  __$$SwiperPreferencesResponseImplCopyWithImpl(
      _$SwiperPreferencesResponseImpl _value,
      $Res Function(_$SwiperPreferencesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwiperPreferencesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? minAge = null,
    Object? maxAge = null,
    Object? preferredGender = null,
    Object? maxDistance = null,
  }) {
    return _then(_$SwiperPreferencesResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      preferredGender: null == preferredGender
          ? _value.preferredGender
          : preferredGender // ignore: cast_nullable_to_non_nullable
              as String,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwiperPreferencesResponseImpl implements _SwiperPreferencesResponse {
  const _$SwiperPreferencesResponseImpl(
      {required this.id,
      required this.userId,
      required this.minAge,
      required this.maxAge,
      required this.preferredGender,
      required this.maxDistance});

  factory _$SwiperPreferencesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwiperPreferencesResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int minAge;
  @override
  final int maxAge;
  @override
  final String preferredGender;
  @override
  final int maxDistance;

  @override
  String toString() {
    return 'SwiperPreferencesResponse(id: $id, userId: $userId, minAge: $minAge, maxAge: $maxAge, preferredGender: $preferredGender, maxDistance: $maxDistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwiperPreferencesResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge) &&
            (identical(other.preferredGender, preferredGender) ||
                other.preferredGender == preferredGender) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, minAge, maxAge, preferredGender, maxDistance);

  /// Create a copy of SwiperPreferencesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwiperPreferencesResponseImplCopyWith<_$SwiperPreferencesResponseImpl>
      get copyWith => __$$SwiperPreferencesResponseImplCopyWithImpl<
          _$SwiperPreferencesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwiperPreferencesResponseImplToJson(
      this,
    );
  }
}

abstract class _SwiperPreferencesResponse implements SwiperPreferencesResponse {
  const factory _SwiperPreferencesResponse(
      {required final int id,
      required final int userId,
      required final int minAge,
      required final int maxAge,
      required final String preferredGender,
      required final int maxDistance}) = _$SwiperPreferencesResponseImpl;

  factory _SwiperPreferencesResponse.fromJson(Map<String, dynamic> json) =
      _$SwiperPreferencesResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get minAge;
  @override
  int get maxAge;
  @override
  String get preferredGender;
  @override
  int get maxDistance;

  /// Create a copy of SwiperPreferencesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwiperPreferencesResponseImplCopyWith<_$SwiperPreferencesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SwiperPreferencesRequest _$SwiperPreferencesRequestFromJson(
    Map<String, dynamic> json) {
  return _SwiperPreferencesRequest.fromJson(json);
}

/// @nodoc
mixin _$SwiperPreferencesRequest {
  int get minAge => throw _privateConstructorUsedError;
  int get maxAge => throw _privateConstructorUsedError;
  String get preferredGender => throw _privateConstructorUsedError;
  int get maxDistance => throw _privateConstructorUsedError;

  /// Serializes this SwiperPreferencesRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwiperPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwiperPreferencesRequestCopyWith<SwiperPreferencesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwiperPreferencesRequestCopyWith<$Res> {
  factory $SwiperPreferencesRequestCopyWith(SwiperPreferencesRequest value,
          $Res Function(SwiperPreferencesRequest) then) =
      _$SwiperPreferencesRequestCopyWithImpl<$Res, SwiperPreferencesRequest>;
  @useResult
  $Res call({int minAge, int maxAge, String preferredGender, int maxDistance});
}

/// @nodoc
class _$SwiperPreferencesRequestCopyWithImpl<$Res,
        $Val extends SwiperPreferencesRequest>
    implements $SwiperPreferencesRequestCopyWith<$Res> {
  _$SwiperPreferencesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwiperPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minAge = null,
    Object? maxAge = null,
    Object? preferredGender = null,
    Object? maxDistance = null,
  }) {
    return _then(_value.copyWith(
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      preferredGender: null == preferredGender
          ? _value.preferredGender
          : preferredGender // ignore: cast_nullable_to_non_nullable
              as String,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwiperPreferencesRequestImplCopyWith<$Res>
    implements $SwiperPreferencesRequestCopyWith<$Res> {
  factory _$$SwiperPreferencesRequestImplCopyWith(
          _$SwiperPreferencesRequestImpl value,
          $Res Function(_$SwiperPreferencesRequestImpl) then) =
      __$$SwiperPreferencesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minAge, int maxAge, String preferredGender, int maxDistance});
}

/// @nodoc
class __$$SwiperPreferencesRequestImplCopyWithImpl<$Res>
    extends _$SwiperPreferencesRequestCopyWithImpl<$Res,
        _$SwiperPreferencesRequestImpl>
    implements _$$SwiperPreferencesRequestImplCopyWith<$Res> {
  __$$SwiperPreferencesRequestImplCopyWithImpl(
      _$SwiperPreferencesRequestImpl _value,
      $Res Function(_$SwiperPreferencesRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwiperPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minAge = null,
    Object? maxAge = null,
    Object? preferredGender = null,
    Object? maxDistance = null,
  }) {
    return _then(_$SwiperPreferencesRequestImpl(
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      preferredGender: null == preferredGender
          ? _value.preferredGender
          : preferredGender // ignore: cast_nullable_to_non_nullable
              as String,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwiperPreferencesRequestImpl implements _SwiperPreferencesRequest {
  const _$SwiperPreferencesRequestImpl(
      {required this.minAge,
      required this.maxAge,
      required this.preferredGender,
      required this.maxDistance});

  factory _$SwiperPreferencesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwiperPreferencesRequestImplFromJson(json);

  @override
  final int minAge;
  @override
  final int maxAge;
  @override
  final String preferredGender;
  @override
  final int maxDistance;

  @override
  String toString() {
    return 'SwiperPreferencesRequest(minAge: $minAge, maxAge: $maxAge, preferredGender: $preferredGender, maxDistance: $maxDistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwiperPreferencesRequestImpl &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge) &&
            (identical(other.preferredGender, preferredGender) ||
                other.preferredGender == preferredGender) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minAge, maxAge, preferredGender, maxDistance);

  /// Create a copy of SwiperPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwiperPreferencesRequestImplCopyWith<_$SwiperPreferencesRequestImpl>
      get copyWith => __$$SwiperPreferencesRequestImplCopyWithImpl<
          _$SwiperPreferencesRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwiperPreferencesRequestImplToJson(
      this,
    );
  }
}

abstract class _SwiperPreferencesRequest implements SwiperPreferencesRequest {
  const factory _SwiperPreferencesRequest(
      {required final int minAge,
      required final int maxAge,
      required final String preferredGender,
      required final int maxDistance}) = _$SwiperPreferencesRequestImpl;

  factory _SwiperPreferencesRequest.fromJson(Map<String, dynamic> json) =
      _$SwiperPreferencesRequestImpl.fromJson;

  @override
  int get minAge;
  @override
  int get maxAge;
  @override
  String get preferredGender;
  @override
  int get maxDistance;

  /// Create a copy of SwiperPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwiperPreferencesRequestImplCopyWith<_$SwiperPreferencesRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SwipeRequest _$SwipeRequestFromJson(Map<String, dynamic> json) {
  return _SwipeRequest.fromJson(json);
}

/// @nodoc
mixin _$SwipeRequest {
  int get swipedUserId => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;

  /// Serializes this SwipeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwipeRequestCopyWith<SwipeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeRequestCopyWith<$Res> {
  factory $SwipeRequestCopyWith(
          SwipeRequest value, $Res Function(SwipeRequest) then) =
      _$SwipeRequestCopyWithImpl<$Res, SwipeRequest>;
  @useResult
  $Res call({int swipedUserId, String direction});
}

/// @nodoc
class _$SwipeRequestCopyWithImpl<$Res, $Val extends SwipeRequest>
    implements $SwipeRequestCopyWith<$Res> {
  _$SwipeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swipedUserId = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      swipedUserId: null == swipedUserId
          ? _value.swipedUserId
          : swipedUserId // ignore: cast_nullable_to_non_nullable
              as int,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwipeRequestImplCopyWith<$Res>
    implements $SwipeRequestCopyWith<$Res> {
  factory _$$SwipeRequestImplCopyWith(
          _$SwipeRequestImpl value, $Res Function(_$SwipeRequestImpl) then) =
      __$$SwipeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int swipedUserId, String direction});
}

/// @nodoc
class __$$SwipeRequestImplCopyWithImpl<$Res>
    extends _$SwipeRequestCopyWithImpl<$Res, _$SwipeRequestImpl>
    implements _$$SwipeRequestImplCopyWith<$Res> {
  __$$SwipeRequestImplCopyWithImpl(
      _$SwipeRequestImpl _value, $Res Function(_$SwipeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swipedUserId = null,
    Object? direction = null,
  }) {
    return _then(_$SwipeRequestImpl(
      swipedUserId: null == swipedUserId
          ? _value.swipedUserId
          : swipedUserId // ignore: cast_nullable_to_non_nullable
              as int,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwipeRequestImpl implements _SwipeRequest {
  const _$SwipeRequestImpl(
      {required this.swipedUserId, required this.direction});

  factory _$SwipeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwipeRequestImplFromJson(json);

  @override
  final int swipedUserId;
  @override
  final String direction;

  @override
  String toString() {
    return 'SwipeRequest(swipedUserId: $swipedUserId, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwipeRequestImpl &&
            (identical(other.swipedUserId, swipedUserId) ||
                other.swipedUserId == swipedUserId) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, swipedUserId, direction);

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwipeRequestImplCopyWith<_$SwipeRequestImpl> get copyWith =>
      __$$SwipeRequestImplCopyWithImpl<_$SwipeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwipeRequestImplToJson(
      this,
    );
  }
}

abstract class _SwipeRequest implements SwipeRequest {
  const factory _SwipeRequest(
      {required final int swipedUserId,
      required final String direction}) = _$SwipeRequestImpl;

  factory _SwipeRequest.fromJson(Map<String, dynamic> json) =
      _$SwipeRequestImpl.fromJson;

  @override
  int get swipedUserId;
  @override
  String get direction;

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwipeRequestImplCopyWith<_$SwipeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SwipeResponse _$SwipeResponseFromJson(Map<String, dynamic> json) {
  return _SwipeResponse.fromJson(json);
}

/// @nodoc
mixin _$SwipeResponse {
  int get id => throw _privateConstructorUsedError;
  int get swiperId => throw _privateConstructorUsedError;
  int get swipedId => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  bool get isMatch => throw _privateConstructorUsedError;

  /// Serializes this SwipeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwipeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwipeResponseCopyWith<SwipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeResponseCopyWith<$Res> {
  factory $SwipeResponseCopyWith(
          SwipeResponse value, $Res Function(SwipeResponse) then) =
      _$SwipeResponseCopyWithImpl<$Res, SwipeResponse>;
  @useResult
  $Res call(
      {int id,
      int swiperId,
      int swipedId,
      String direction,
      String createdAt,
      bool isMatch});
}

/// @nodoc
class _$SwipeResponseCopyWithImpl<$Res, $Val extends SwipeResponse>
    implements $SwipeResponseCopyWith<$Res> {
  _$SwipeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwipeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? swiperId = null,
    Object? swipedId = null,
    Object? direction = null,
    Object? createdAt = null,
    Object? isMatch = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      swiperId: null == swiperId
          ? _value.swiperId
          : swiperId // ignore: cast_nullable_to_non_nullable
              as int,
      swipedId: null == swipedId
          ? _value.swipedId
          : swipedId // ignore: cast_nullable_to_non_nullable
              as int,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isMatch: null == isMatch
          ? _value.isMatch
          : isMatch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwipeResponseImplCopyWith<$Res>
    implements $SwipeResponseCopyWith<$Res> {
  factory _$$SwipeResponseImplCopyWith(
          _$SwipeResponseImpl value, $Res Function(_$SwipeResponseImpl) then) =
      __$$SwipeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int swiperId,
      int swipedId,
      String direction,
      String createdAt,
      bool isMatch});
}

/// @nodoc
class __$$SwipeResponseImplCopyWithImpl<$Res>
    extends _$SwipeResponseCopyWithImpl<$Res, _$SwipeResponseImpl>
    implements _$$SwipeResponseImplCopyWith<$Res> {
  __$$SwipeResponseImplCopyWithImpl(
      _$SwipeResponseImpl _value, $Res Function(_$SwipeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwipeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? swiperId = null,
    Object? swipedId = null,
    Object? direction = null,
    Object? createdAt = null,
    Object? isMatch = null,
  }) {
    return _then(_$SwipeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      swiperId: null == swiperId
          ? _value.swiperId
          : swiperId // ignore: cast_nullable_to_non_nullable
              as int,
      swipedId: null == swipedId
          ? _value.swipedId
          : swipedId // ignore: cast_nullable_to_non_nullable
              as int,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isMatch: null == isMatch
          ? _value.isMatch
          : isMatch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwipeResponseImpl implements _SwipeResponse {
  const _$SwipeResponseImpl(
      {required this.id,
      required this.swiperId,
      required this.swipedId,
      required this.direction,
      required this.createdAt,
      required this.isMatch});

  factory _$SwipeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwipeResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int swiperId;
  @override
  final int swipedId;
  @override
  final String direction;
  @override
  final String createdAt;
  @override
  final bool isMatch;

  @override
  String toString() {
    return 'SwipeResponse(id: $id, swiperId: $swiperId, swipedId: $swipedId, direction: $direction, createdAt: $createdAt, isMatch: $isMatch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwipeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.swiperId, swiperId) ||
                other.swiperId == swiperId) &&
            (identical(other.swipedId, swipedId) ||
                other.swipedId == swipedId) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isMatch, isMatch) || other.isMatch == isMatch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, swiperId, swipedId, direction, createdAt, isMatch);

  /// Create a copy of SwipeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwipeResponseImplCopyWith<_$SwipeResponseImpl> get copyWith =>
      __$$SwipeResponseImplCopyWithImpl<_$SwipeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwipeResponseImplToJson(
      this,
    );
  }
}

abstract class _SwipeResponse implements SwipeResponse {
  const factory _SwipeResponse(
      {required final int id,
      required final int swiperId,
      required final int swipedId,
      required final String direction,
      required final String createdAt,
      required final bool isMatch}) = _$SwipeResponseImpl;

  factory _SwipeResponse.fromJson(Map<String, dynamic> json) =
      _$SwipeResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get swiperId;
  @override
  int get swipedId;
  @override
  String get direction;
  @override
  String get createdAt;
  @override
  bool get isMatch;

  /// Create a copy of SwipeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwipeResponseImplCopyWith<_$SwipeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SwiperUserProfileResponse _$SwiperUserProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _SwiperUserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$SwiperUserProfileResponse {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get mainImageUrl => throw _privateConstructorUsedError;
  List<String> get otherImages => throw _privateConstructorUsedError;
  double get createdAt => throw _privateConstructorUsedError;
  double get updatedAt => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Serializes this SwiperUserProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwiperUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwiperUserProfileResponseCopyWith<SwiperUserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwiperUserProfileResponseCopyWith<$Res> {
  factory $SwiperUserProfileResponseCopyWith(SwiperUserProfileResponse value,
          $Res Function(SwiperUserProfileResponse) then) =
      _$SwiperUserProfileResponseCopyWithImpl<$Res, SwiperUserProfileResponse>;
  @useResult
  $Res call(
      {int id,
      int userId,
      String? description,
      String? mainImageUrl,
      List<String> otherImages,
      double createdAt,
      double updatedAt,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SwiperUserProfileResponseCopyWithImpl<$Res,
        $Val extends SwiperUserProfileResponse>
    implements $SwiperUserProfileResponseCopyWith<$Res> {
  _$SwiperUserProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwiperUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? description = freezed,
    Object? mainImageUrl = freezed,
    Object? otherImages = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      otherImages: null == otherImages
          ? _value.otherImages
          : otherImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of SwiperUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SwiperUserProfileResponseImplCopyWith<$Res>
    implements $SwiperUserProfileResponseCopyWith<$Res> {
  factory _$$SwiperUserProfileResponseImplCopyWith(
          _$SwiperUserProfileResponseImpl value,
          $Res Function(_$SwiperUserProfileResponseImpl) then) =
      __$$SwiperUserProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      String? description,
      String? mainImageUrl,
      List<String> otherImages,
      double createdAt,
      double updatedAt,
      User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SwiperUserProfileResponseImplCopyWithImpl<$Res>
    extends _$SwiperUserProfileResponseCopyWithImpl<$Res,
        _$SwiperUserProfileResponseImpl>
    implements _$$SwiperUserProfileResponseImplCopyWith<$Res> {
  __$$SwiperUserProfileResponseImplCopyWithImpl(
      _$SwiperUserProfileResponseImpl _value,
      $Res Function(_$SwiperUserProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwiperUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? description = freezed,
    Object? mainImageUrl = freezed,
    Object? otherImages = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
  }) {
    return _then(_$SwiperUserProfileResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      otherImages: null == otherImages
          ? _value._otherImages
          : otherImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwiperUserProfileResponseImpl implements _SwiperUserProfileResponse {
  const _$SwiperUserProfileResponseImpl(
      {required this.id,
      required this.userId,
      required this.description,
      required this.mainImageUrl,
      required final List<String> otherImages,
      required this.createdAt,
      required this.updatedAt,
      required this.user})
      : _otherImages = otherImages;

  factory _$SwiperUserProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwiperUserProfileResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String? description;
  @override
  final String? mainImageUrl;
  final List<String> _otherImages;
  @override
  List<String> get otherImages {
    if (_otherImages is EqualUnmodifiableListView) return _otherImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherImages);
  }

  @override
  final double createdAt;
  @override
  final double updatedAt;
  @override
  final User user;

  @override
  String toString() {
    return 'SwiperUserProfileResponse(id: $id, userId: $userId, description: $description, mainImageUrl: $mainImageUrl, otherImages: $otherImages, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwiperUserProfileResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mainImageUrl, mainImageUrl) ||
                other.mainImageUrl == mainImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._otherImages, _otherImages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      description,
      mainImageUrl,
      const DeepCollectionEquality().hash(_otherImages),
      createdAt,
      updatedAt,
      user);

  /// Create a copy of SwiperUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwiperUserProfileResponseImplCopyWith<_$SwiperUserProfileResponseImpl>
      get copyWith => __$$SwiperUserProfileResponseImplCopyWithImpl<
          _$SwiperUserProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwiperUserProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _SwiperUserProfileResponse implements SwiperUserProfileResponse {
  const factory _SwiperUserProfileResponse(
      {required final int id,
      required final int userId,
      required final String? description,
      required final String? mainImageUrl,
      required final List<String> otherImages,
      required final double createdAt,
      required final double updatedAt,
      required final User user}) = _$SwiperUserProfileResponseImpl;

  factory _SwiperUserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$SwiperUserProfileResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String? get description;
  @override
  String? get mainImageUrl;
  @override
  List<String> get otherImages;
  @override
  double get createdAt;
  @override
  double get updatedAt;
  @override
  User get user;

  /// Create a copy of SwiperUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwiperUserProfileResponseImplCopyWith<_$SwiperUserProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SwiperUserProfileRequest _$SwiperUserProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _SwiperUserProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$SwiperUserProfileRequest {
  String? get description => throw _privateConstructorUsedError;
  String? get mainImageUrl => throw _privateConstructorUsedError;
  List<String> get otherImages => throw _privateConstructorUsedError;

  /// Serializes this SwiperUserProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwiperUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwiperUserProfileRequestCopyWith<SwiperUserProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwiperUserProfileRequestCopyWith<$Res> {
  factory $SwiperUserProfileRequestCopyWith(SwiperUserProfileRequest value,
          $Res Function(SwiperUserProfileRequest) then) =
      _$SwiperUserProfileRequestCopyWithImpl<$Res, SwiperUserProfileRequest>;
  @useResult
  $Res call(
      {String? description, String? mainImageUrl, List<String> otherImages});
}

/// @nodoc
class _$SwiperUserProfileRequestCopyWithImpl<$Res,
        $Val extends SwiperUserProfileRequest>
    implements $SwiperUserProfileRequestCopyWith<$Res> {
  _$SwiperUserProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwiperUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? mainImageUrl = freezed,
    Object? otherImages = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      otherImages: null == otherImages
          ? _value.otherImages
          : otherImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwiperUserProfileRequestImplCopyWith<$Res>
    implements $SwiperUserProfileRequestCopyWith<$Res> {
  factory _$$SwiperUserProfileRequestImplCopyWith(
          _$SwiperUserProfileRequestImpl value,
          $Res Function(_$SwiperUserProfileRequestImpl) then) =
      __$$SwiperUserProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description, String? mainImageUrl, List<String> otherImages});
}

/// @nodoc
class __$$SwiperUserProfileRequestImplCopyWithImpl<$Res>
    extends _$SwiperUserProfileRequestCopyWithImpl<$Res,
        _$SwiperUserProfileRequestImpl>
    implements _$$SwiperUserProfileRequestImplCopyWith<$Res> {
  __$$SwiperUserProfileRequestImplCopyWithImpl(
      _$SwiperUserProfileRequestImpl _value,
      $Res Function(_$SwiperUserProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwiperUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? mainImageUrl = freezed,
    Object? otherImages = null,
  }) {
    return _then(_$SwiperUserProfileRequestImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      otherImages: null == otherImages
          ? _value._otherImages
          : otherImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwiperUserProfileRequestImpl implements _SwiperUserProfileRequest {
  const _$SwiperUserProfileRequestImpl(
      {required this.description,
      required this.mainImageUrl,
      required final List<String> otherImages})
      : _otherImages = otherImages;

  factory _$SwiperUserProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwiperUserProfileRequestImplFromJson(json);

  @override
  final String? description;
  @override
  final String? mainImageUrl;
  final List<String> _otherImages;
  @override
  List<String> get otherImages {
    if (_otherImages is EqualUnmodifiableListView) return _otherImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherImages);
  }

  @override
  String toString() {
    return 'SwiperUserProfileRequest(description: $description, mainImageUrl: $mainImageUrl, otherImages: $otherImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwiperUserProfileRequestImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mainImageUrl, mainImageUrl) ||
                other.mainImageUrl == mainImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._otherImages, _otherImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, mainImageUrl,
      const DeepCollectionEquality().hash(_otherImages));

  /// Create a copy of SwiperUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwiperUserProfileRequestImplCopyWith<_$SwiperUserProfileRequestImpl>
      get copyWith => __$$SwiperUserProfileRequestImplCopyWithImpl<
          _$SwiperUserProfileRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwiperUserProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _SwiperUserProfileRequest implements SwiperUserProfileRequest {
  const factory _SwiperUserProfileRequest(
          {required final String? description,
          required final String? mainImageUrl,
          required final List<String> otherImages}) =
      _$SwiperUserProfileRequestImpl;

  factory _SwiperUserProfileRequest.fromJson(Map<String, dynamic> json) =
      _$SwiperUserProfileRequestImpl.fromJson;

  @override
  String? get description;
  @override
  String? get mainImageUrl;
  @override
  List<String> get otherImages;

  /// Create a copy of SwiperUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwiperUserProfileRequestImplCopyWith<_$SwiperUserProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SwiperPotencialUserProfileResponse _$SwiperPotencialUserProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _SwiperPotencialUserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$SwiperPotencialUserProfileResponse {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get mainImageUrl => throw _privateConstructorUsedError;
  List<String> get otherImages => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Serializes this SwiperPotencialUserProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwiperPotencialUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwiperPotencialUserProfileResponseCopyWith<
          SwiperPotencialUserProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwiperPotencialUserProfileResponseCopyWith<$Res> {
  factory $SwiperPotencialUserProfileResponseCopyWith(
          SwiperPotencialUserProfileResponse value,
          $Res Function(SwiperPotencialUserProfileResponse) then) =
      _$SwiperPotencialUserProfileResponseCopyWithImpl<$Res,
          SwiperPotencialUserProfileResponse>;
  @useResult
  $Res call(
      {int id,
      int userId,
      String? description,
      String? mainImageUrl,
      List<String> otherImages,
      double distance,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SwiperPotencialUserProfileResponseCopyWithImpl<$Res,
        $Val extends SwiperPotencialUserProfileResponse>
    implements $SwiperPotencialUserProfileResponseCopyWith<$Res> {
  _$SwiperPotencialUserProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwiperPotencialUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? description = freezed,
    Object? mainImageUrl = freezed,
    Object? otherImages = null,
    Object? distance = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      otherImages: null == otherImages
          ? _value.otherImages
          : otherImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of SwiperPotencialUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SwiperPotencialUserProfileResponseImplCopyWith<$Res>
    implements $SwiperPotencialUserProfileResponseCopyWith<$Res> {
  factory _$$SwiperPotencialUserProfileResponseImplCopyWith(
          _$SwiperPotencialUserProfileResponseImpl value,
          $Res Function(_$SwiperPotencialUserProfileResponseImpl) then) =
      __$$SwiperPotencialUserProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      String? description,
      String? mainImageUrl,
      List<String> otherImages,
      double distance,
      User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SwiperPotencialUserProfileResponseImplCopyWithImpl<$Res>
    extends _$SwiperPotencialUserProfileResponseCopyWithImpl<$Res,
        _$SwiperPotencialUserProfileResponseImpl>
    implements _$$SwiperPotencialUserProfileResponseImplCopyWith<$Res> {
  __$$SwiperPotencialUserProfileResponseImplCopyWithImpl(
      _$SwiperPotencialUserProfileResponseImpl _value,
      $Res Function(_$SwiperPotencialUserProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwiperPotencialUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? description = freezed,
    Object? mainImageUrl = freezed,
    Object? otherImages = null,
    Object? distance = null,
    Object? user = null,
  }) {
    return _then(_$SwiperPotencialUserProfileResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      otherImages: null == otherImages
          ? _value._otherImages
          : otherImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwiperPotencialUserProfileResponseImpl
    implements _SwiperPotencialUserProfileResponse {
  const _$SwiperPotencialUserProfileResponseImpl(
      {required this.id,
      required this.userId,
      required this.description,
      required this.mainImageUrl,
      required final List<String> otherImages,
      required this.distance,
      required this.user})
      : _otherImages = otherImages;

  factory _$SwiperPotencialUserProfileResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SwiperPotencialUserProfileResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String? description;
  @override
  final String? mainImageUrl;
  final List<String> _otherImages;
  @override
  List<String> get otherImages {
    if (_otherImages is EqualUnmodifiableListView) return _otherImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherImages);
  }

  @override
  final double distance;
  @override
  final User user;

  @override
  String toString() {
    return 'SwiperPotencialUserProfileResponse(id: $id, userId: $userId, description: $description, mainImageUrl: $mainImageUrl, otherImages: $otherImages, distance: $distance, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwiperPotencialUserProfileResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mainImageUrl, mainImageUrl) ||
                other.mainImageUrl == mainImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._otherImages, _otherImages) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      description,
      mainImageUrl,
      const DeepCollectionEquality().hash(_otherImages),
      distance,
      user);

  /// Create a copy of SwiperPotencialUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwiperPotencialUserProfileResponseImplCopyWith<
          _$SwiperPotencialUserProfileResponseImpl>
      get copyWith => __$$SwiperPotencialUserProfileResponseImplCopyWithImpl<
          _$SwiperPotencialUserProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwiperPotencialUserProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _SwiperPotencialUserProfileResponse
    implements SwiperPotencialUserProfileResponse {
  const factory _SwiperPotencialUserProfileResponse(
      {required final int id,
      required final int userId,
      required final String? description,
      required final String? mainImageUrl,
      required final List<String> otherImages,
      required final double distance,
      required final User user}) = _$SwiperPotencialUserProfileResponseImpl;

  factory _SwiperPotencialUserProfileResponse.fromJson(
          Map<String, dynamic> json) =
      _$SwiperPotencialUserProfileResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String? get description;
  @override
  String? get mainImageUrl;
  @override
  List<String> get otherImages;
  @override
  double get distance;
  @override
  User get user;

  /// Create a copy of SwiperPotencialUserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwiperPotencialUserProfileResponseImplCopyWith<
          _$SwiperPotencialUserProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PotentialSwipePagableResponse _$PotentialSwipePagableResponseFromJson(
    Map<String, dynamic> json) {
  return _PotentialSwipePagableResponse.fromJson(json);
}

/// @nodoc
mixin _$PotentialSwipePagableResponse {
  List<SwiperPotencialUserProfileResponse> get content =>
      throw _privateConstructorUsedError;
  Pageable get pageable => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  /// Serializes this PotentialSwipePagableResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PotentialSwipePagableResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PotentialSwipePagableResponseCopyWith<PotentialSwipePagableResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PotentialSwipePagableResponseCopyWith<$Res> {
  factory $PotentialSwipePagableResponseCopyWith(
          PotentialSwipePagableResponse value,
          $Res Function(PotentialSwipePagableResponse) then) =
      _$PotentialSwipePagableResponseCopyWithImpl<$Res,
          PotentialSwipePagableResponse>;
  @useResult
  $Res call(
      {List<SwiperPotencialUserProfileResponse> content,
      Pageable pageable,
      int totalPages,
      int totalElements,
      bool last,
      bool first,
      int size,
      int number,
      Sort sort,
      int numberOfElements,
      bool empty});

  $PageableCopyWith<$Res> get pageable;
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$PotentialSwipePagableResponseCopyWithImpl<$Res,
        $Val extends PotentialSwipePagableResponse>
    implements $PotentialSwipePagableResponseCopyWith<$Res> {
  _$PotentialSwipePagableResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PotentialSwipePagableResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? totalPages = null,
    Object? totalElements = null,
    Object? last = null,
    Object? first = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? numberOfElements = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SwiperPotencialUserProfileResponse>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PotentialSwipePagableResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }

  /// Create a copy of PotentialSwipePagableResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PotentialSwipePagableResponseImplCopyWith<$Res>
    implements $PotentialSwipePagableResponseCopyWith<$Res> {
  factory _$$PotentialSwipePagableResponseImplCopyWith(
          _$PotentialSwipePagableResponseImpl value,
          $Res Function(_$PotentialSwipePagableResponseImpl) then) =
      __$$PotentialSwipePagableResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SwiperPotencialUserProfileResponse> content,
      Pageable pageable,
      int totalPages,
      int totalElements,
      bool last,
      bool first,
      int size,
      int number,
      Sort sort,
      int numberOfElements,
      bool empty});

  @override
  $PageableCopyWith<$Res> get pageable;
  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$PotentialSwipePagableResponseImplCopyWithImpl<$Res>
    extends _$PotentialSwipePagableResponseCopyWithImpl<$Res,
        _$PotentialSwipePagableResponseImpl>
    implements _$$PotentialSwipePagableResponseImplCopyWith<$Res> {
  __$$PotentialSwipePagableResponseImplCopyWithImpl(
      _$PotentialSwipePagableResponseImpl _value,
      $Res Function(_$PotentialSwipePagableResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PotentialSwipePagableResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? totalPages = null,
    Object? totalElements = null,
    Object? last = null,
    Object? first = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? numberOfElements = null,
    Object? empty = null,
  }) {
    return _then(_$PotentialSwipePagableResponseImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SwiperPotencialUserProfileResponse>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PotentialSwipePagableResponseImpl
    implements _PotentialSwipePagableResponse {
  const _$PotentialSwipePagableResponseImpl(
      {required final List<SwiperPotencialUserProfileResponse> content,
      required this.pageable,
      required this.totalPages,
      required this.totalElements,
      required this.last,
      required this.first,
      required this.size,
      required this.number,
      required this.sort,
      required this.numberOfElements,
      required this.empty})
      : _content = content;

  factory _$PotentialSwipePagableResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PotentialSwipePagableResponseImplFromJson(json);

  final List<SwiperPotencialUserProfileResponse> _content;
  @override
  List<SwiperPotencialUserProfileResponse> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final Pageable pageable;
  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final bool last;
  @override
  final bool first;
  @override
  final int size;
  @override
  final int number;
  @override
  final Sort sort;
  @override
  final int numberOfElements;
  @override
  final bool empty;

  @override
  String toString() {
    return 'PotentialSwipePagableResponse(content: $content, pageable: $pageable, totalPages: $totalPages, totalElements: $totalElements, last: $last, first: $first, size: $size, number: $number, sort: $sort, numberOfElements: $numberOfElements, empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PotentialSwipePagableResponseImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      pageable,
      totalPages,
      totalElements,
      last,
      first,
      size,
      number,
      sort,
      numberOfElements,
      empty);

  /// Create a copy of PotentialSwipePagableResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PotentialSwipePagableResponseImplCopyWith<
          _$PotentialSwipePagableResponseImpl>
      get copyWith => __$$PotentialSwipePagableResponseImplCopyWithImpl<
          _$PotentialSwipePagableResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PotentialSwipePagableResponseImplToJson(
      this,
    );
  }
}

abstract class _PotentialSwipePagableResponse
    implements PotentialSwipePagableResponse {
  const factory _PotentialSwipePagableResponse(
      {required final List<SwiperPotencialUserProfileResponse> content,
      required final Pageable pageable,
      required final int totalPages,
      required final int totalElements,
      required final bool last,
      required final bool first,
      required final int size,
      required final int number,
      required final Sort sort,
      required final int numberOfElements,
      required final bool empty}) = _$PotentialSwipePagableResponseImpl;

  factory _PotentialSwipePagableResponse.fromJson(Map<String, dynamic> json) =
      _$PotentialSwipePagableResponseImpl.fromJson;

  @override
  List<SwiperPotencialUserProfileResponse> get content;
  @override
  Pageable get pageable;
  @override
  int get totalPages;
  @override
  int get totalElements;
  @override
  bool get last;
  @override
  bool get first;
  @override
  int get size;
  @override
  int get number;
  @override
  Sort get sort;
  @override
  int get numberOfElements;
  @override
  bool get empty;

  /// Create a copy of PotentialSwipePagableResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PotentialSwipePagableResponseImplCopyWith<
          _$PotentialSwipePagableResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
