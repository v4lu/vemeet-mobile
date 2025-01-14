// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swiper_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SortImpl _$$SortImplFromJson(Map<String, dynamic> json) => _$SortImpl(
      sorted: json['sorted'] as bool,
      unsorted: json['unsorted'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$SortImplToJson(_$SortImpl instance) =>
    <String, dynamic>{
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
      'empty': instance.empty,
    };

_$PageableImpl _$$PageableImplFromJson(Map<String, dynamic> json) =>
    _$PageableImpl(
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      sort: Sort.fromJson(json['sort'] as Map<String, dynamic>),
      offset: (json['offset'] as num).toInt(),
      paged: json['paged'] as bool,
      unpaged: json['unpaged'] as bool,
    );

Map<String, dynamic> _$$PageableImplToJson(_$PageableImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'sort': instance.sort,
      'offset': instance.offset,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
    };

_$SwiperPreferencesResponseImpl _$$SwiperPreferencesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SwiperPreferencesResponseImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      minAge: (json['minAge'] as num).toInt(),
      maxAge: (json['maxAge'] as num).toInt(),
      preferredGender: json['preferredGender'] as String,
      maxDistance: (json['maxDistance'] as num).toInt(),
    );

Map<String, dynamic> _$$SwiperPreferencesResponseImplToJson(
        _$SwiperPreferencesResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'preferredGender': instance.preferredGender,
      'maxDistance': instance.maxDistance,
    };

_$SwiperPreferencesRequestImpl _$$SwiperPreferencesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SwiperPreferencesRequestImpl(
      minAge: (json['minAge'] as num).toInt(),
      maxAge: (json['maxAge'] as num).toInt(),
      preferredGender: json['preferredGender'] as String,
      maxDistance: (json['maxDistance'] as num).toInt(),
    );

Map<String, dynamic> _$$SwiperPreferencesRequestImplToJson(
        _$SwiperPreferencesRequestImpl instance) =>
    <String, dynamic>{
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'preferredGender': instance.preferredGender,
      'maxDistance': instance.maxDistance,
    };

_$SwipeRequestImpl _$$SwipeRequestImplFromJson(Map<String, dynamic> json) =>
    _$SwipeRequestImpl(
      swipedUserId: (json['swipedUserId'] as num).toInt(),
      direction: json['direction'] as String,
    );

Map<String, dynamic> _$$SwipeRequestImplToJson(_$SwipeRequestImpl instance) =>
    <String, dynamic>{
      'swipedUserId': instance.swipedUserId,
      'direction': instance.direction,
    };

_$SwipeResponseImpl _$$SwipeResponseImplFromJson(Map<String, dynamic> json) =>
    _$SwipeResponseImpl(
      id: (json['id'] as num).toInt(),
      swiperId: (json['swiperId'] as num).toInt(),
      swipedId: (json['swipedId'] as num).toInt(),
      direction: json['direction'] as String,
      createdAt: json['createdAt'] as String,
      isMatch: json['isMatch'] as bool,
    );

Map<String, dynamic> _$$SwipeResponseImplToJson(_$SwipeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'swiperId': instance.swiperId,
      'swipedId': instance.swipedId,
      'direction': instance.direction,
      'createdAt': instance.createdAt,
      'isMatch': instance.isMatch,
    };

_$SwiperUserProfileResponseImpl _$$SwiperUserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SwiperUserProfileResponseImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      description: json['description'] as String?,
      mainImageUrl: json['mainImageUrl'] as String?,
      otherImages: (json['otherImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: (json['createdAt'] as num).toDouble(),
      updatedAt: (json['updatedAt'] as num).toDouble(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SwiperUserProfileResponseImplToJson(
        _$SwiperUserProfileResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'description': instance.description,
      'mainImageUrl': instance.mainImageUrl,
      'otherImages': instance.otherImages,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user': instance.user,
    };

_$SwiperUserProfileRequestImpl _$$SwiperUserProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SwiperUserProfileRequestImpl(
      description: json['description'] as String?,
      mainImageUrl: json['mainImageUrl'] as String?,
      otherImages: (json['otherImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SwiperUserProfileRequestImplToJson(
        _$SwiperUserProfileRequestImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'mainImageUrl': instance.mainImageUrl,
      'otherImages': instance.otherImages,
    };

_$SwiperPotencialUserProfileResponseImpl
    _$$SwiperPotencialUserProfileResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$SwiperPotencialUserProfileResponseImpl(
          id: (json['id'] as num).toInt(),
          userId: (json['userId'] as num).toInt(),
          description: json['description'] as String?,
          mainImageUrl: json['mainImageUrl'] as String?,
          otherImages: (json['otherImages'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          distance: (json['distance'] as num).toDouble(),
          user: User.fromJson(json['user'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SwiperPotencialUserProfileResponseImplToJson(
        _$SwiperPotencialUserProfileResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'description': instance.description,
      'mainImageUrl': instance.mainImageUrl,
      'otherImages': instance.otherImages,
      'distance': instance.distance,
      'user': instance.user,
    };

_$PotentialSwipePagableResponseImpl
    _$$PotentialSwipePagableResponseImplFromJson(Map<String, dynamic> json) =>
        _$PotentialSwipePagableResponseImpl(
          content: (json['content'] as List<dynamic>)
              .map((e) => SwiperPotencialUserProfileResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
          totalPages: (json['totalPages'] as num).toInt(),
          totalElements: (json['totalElements'] as num).toInt(),
          last: json['last'] as bool,
          first: json['first'] as bool,
          size: (json['size'] as num).toInt(),
          number: (json['number'] as num).toInt(),
          sort: Sort.fromJson(json['sort'] as Map<String, dynamic>),
          numberOfElements: (json['numberOfElements'] as num).toInt(),
          empty: json['empty'] as bool,
        );

Map<String, dynamic> _$$PotentialSwipePagableResponseImplToJson(
        _$PotentialSwipePagableResponseImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'last': instance.last,
      'first': instance.first,
      'size': instance.size,
      'number': instance.number,
      'sort': instance.sort,
      'numberOfElements': instance.numberOfElements,
      'empty': instance.empty,
    };
