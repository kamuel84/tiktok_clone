// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoPostModel _$VideoPostModelFromJson(Map<String, dynamic> json) =>
    _VideoPostModel(
      id: json['id'] as String,
      userName: json['userName'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      videoUrl: json['videoUrl'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
      likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
      commentsCount: (json['commentsCount'] as num?)?.toInt() ?? 0,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$VideoPostModelToJson(_VideoPostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'caption': instance.caption,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'width': instance.width,
      'height': instance.height,
    };
