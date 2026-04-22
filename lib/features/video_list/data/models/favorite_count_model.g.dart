// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteCountModel _$FavoriteCountModelFromJson(Map<String, dynamic> json) =>
    _FavoriteCountModel(
      id: json['id'] as String,
      likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$FavoriteCountModelToJson(_FavoriteCountModel instance) =>
    <String, dynamic>{'id': instance.id, 'likesCount': instance.likesCount};
