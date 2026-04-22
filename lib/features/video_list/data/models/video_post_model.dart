import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/video_post.dart';

part 'video_post_model.g.dart';
part 'video_post_model.freezed.dart';

@freezed
abstract class VideoPostModel with _$VideoPostModel {
  const VideoPostModel._();

  const factory VideoPostModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'userName') @Default('') String userName,
    @JsonKey(name: 'caption') @Default('') String caption,
    @JsonKey(name: 'videoUrl') @Default('') String videoUrl,
    @JsonKey(name: 'thumbnailUrl') @Default('') String thumbnailUrl,
    @JsonKey(name: 'likesCount') @Default(0) int likesCount,
    @JsonKey(name: 'commentsCount') @Default(0) int commentsCount,
    @JsonKey(name: 'width') double? width,
    @JsonKey(name: 'height') double? height,
  }) = _VideoPostModel;

  factory VideoPostModel.fromJson(Map<String, dynamic> json) =>
      _$VideoPostModelFromJson(json);

  VideoPost toEntity({
    String? id,
    String? userName,
    String? caption,
    String? videoUrl,
    String? thumbnailUrl,
    int? likesCount,
    int? commentsCount,
    double? width,
    double? height,
  }) {
    return VideoPost(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      caption: caption ?? this.caption,
      videoUrl: videoUrl ?? this.videoUrl,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      likesCount: likesCount ?? this.likesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
