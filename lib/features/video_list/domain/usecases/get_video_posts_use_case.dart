import '../entities/video_post.dart';
import '../repositories/video_repository.dart';

class GetVideoPostsUseCase {
  final VideoRepository repository;

  GetVideoPostsUseCase(this.repository);

  Future<List<VideoPost>> execute(int page, {int size = 20}) {
    final response = repository.getVideoPosts(page, size: size);
    return response;
  }
}
