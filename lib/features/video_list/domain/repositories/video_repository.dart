import '../entities/video_post.dart';

abstract class VideoRepository {
  Future<List<VideoPost>> getVideoPosts(int page, {int size = 20});
}
