import 'package:supercent_project/features/video_list/data/apis/video_api.dart';
import 'package:supercent_project/features/video_list/data/models/video_post_model.dart';
import '../../domain/entities/video_post.dart';
import '../../domain/repositories/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  const VideoRepositoryImpl(this.videoApi);

  final VideoApi videoApi;

  @override
  Future<List<VideoPost>> getVideoPosts(int page, {int size = 20}) async {
    try {
      final List<VideoPostModel> response = await videoApi.getVideos(
        page,
        size,
      );

      return response.map((item) => item.toEntity()).toList();
    } catch (e) {
      return [];
    }
  }
}
