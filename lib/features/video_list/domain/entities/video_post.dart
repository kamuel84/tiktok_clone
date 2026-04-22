import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_post.freezed.dart';

@freezed
abstract class VideoPost with _$VideoPost {
  const factory VideoPost({
    required String id,
    required String userName,
    required String caption,
    required String videoUrl,
    required String thumbnailUrl,
    required int likesCount,
    required int commentsCount,
    @Default(false) bool isLiked,
    double? width,
    double? height,
  }) = _VideoPost;
}
