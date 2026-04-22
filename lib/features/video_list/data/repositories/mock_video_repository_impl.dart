import '../../domain/entities/video_post.dart';
import '../../domain/repositories/video_repository.dart';
import '../models/video_post_model.dart';

class MockVideoRepositoryImpl implements VideoRepository {
  final List<Map<String, dynamic>> _allVideos = [
    {
      'userName': 'Sea Turtle',
      'caption': 'Swimming under the sea. #ocean #turtle',
      'videoUrl':
          'https://res.cloudinary.com/demo/video/upload/w_720,h_1280,c_fill,g_auto/sea_turtle.mp4',
      'thumbnailUrl':
          'https://res.cloudinary.com/demo/video/upload/sea_turtle.jpg',
      'width': 720.0,
      'height': 1280.0,
    },
    {
      'userName': 'Elephants',
      'caption': 'Majestic elephants in nature. #nature #elephants',
      'videoUrl':
          'https://res.cloudinary.com/demo/video/upload/w_720,h_1280,c_fill,g_auto/elephants.mp4',
      'thumbnailUrl':
          'https://res.cloudinary.com/demo/video/upload/elephants.jpg',
      'width': 720.0,
      'height': 1280.0,
    },
    {
      'userName': 'Playful Dog',
      'caption': 'A happy dog playing. #dog #pets',
      'videoUrl':
          'https://res.cloudinary.com/demo/video/upload/w_720,h_1280,c_fill,g_auto/dog.mp4',
      'thumbnailUrl': 'https://res.cloudinary.com/demo/video/upload/dog.jpg',
      'width': 720.0,
      'height': 1280.0,
    },
    {
      'userName': 'Verified Post 4',
      'caption': 'Stable vertical test clip. #verified #916',
      'videoUrl':
          'https://placeholdervideo.dev/720x1280.mp4?text=Verified_Post_4',
      'thumbnailUrl': 'https://placeholdervideo.dev/720x1280.jpg?text=Thumb_4',
      'width': 720.0,
      'height': 1280.0,
    },
    {
      'userName': 'Verified Post 5',
      'caption': 'Consistent loading test. #stable #mobile',
      'videoUrl':
          'https://placeholdervideo.dev/720x1280.mp4?text=Verified_Post_5',
      'thumbnailUrl': 'https://placeholdervideo.dev/720x1280.jpg?text=Thumb_5',
      'width': 720.0,
      'height': 1280.0,
    },
    {
      'userName': 'Classic Bunny',
      'caption': 'Industry standard animation test. #animation #test',
      'videoUrl': 'https://www.w3schools.com/html/mov_bbb.mp4',
      'thumbnailUrl': 'https://www.w3schools.com/html/pic_trulli.jpg',
      'width': 320.0, // Big Buck Bunny test clip is small
      'height': 176.0,
    },
  ];

  @override
  Future<List<VideoPost>> getVideoPosts(int page, {int size = 20}) async {
    // Simulating API delay
    await Future.delayed(const Duration(milliseconds: 1500));

    // 유니크한 데이터를 만들기 위해 페이지 번호를 활용하여 목업 생성
    return List.generate(size, (index) {
      final videoIndex = (page * size + index) % _allVideos.length;
      final baseData = _allVideos[videoIndex];
      final uniqueId = 'vid_${page}_${index}';

      return VideoPostModel.fromJson({
        'id': uniqueId,
        'userName': '${baseData['userName']} (Page $page)',
        'caption': '${baseData['caption']} - item $index',
        'videoUrl': baseData['videoUrl'],
        'thumbnailUrl': baseData['thumbnailUrl'],
        'likesCount': (page + 1) * 123 + index * 10,
        'commentsCount': (page + 1) * 12 + index,
        'width': baseData['width'],
        'height': baseData['height'],
      }).toEntity();
    });
  }
}
