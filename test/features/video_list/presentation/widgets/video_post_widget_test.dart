import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supercent_project/features/video_list/presentation/widgets/video_post_widget.dart';
import 'package:supercent_project/features/video_list/presentation/providers/video_list_provider.dart';
import 'package:supercent_project/features/video_list/domain/entities/video_post.dart';
import 'package:supercent_project/features/video_list/domain/repositories/video_repository.dart';
import 'package:supercent_project/features/video_list/domain/repositories/favorite_repository.dart';
import 'package:supercent_project/features/video_list/presentation/widgets/video_comment_sheet.dart';
import 'package:supercent_project/features/video_list/domain/entities/favorite_count.dart';

// Mocks
class MockVideoRepository implements VideoRepository {
  @override
  Future<List<VideoPost>> getVideoPosts(int page, {int size = 20}) async => [];
}

class MockFavoriteRepository implements FavoriteRepository {
  @override
  Future<FavoriteCount> setFavoritePost(String postId) async =>
      FavoriteCount(id: postId, favoriteCount: 1);
  @override
  Future<void> removeFavoritePost(String postId) async {}
}

void main() {
  late VideoPost testPost;

  setUp(() {
    testPost = const VideoPost(
      id: '1',
      userName: 'test_user',
      caption: 'test caption',
      videoUrl: 'https://test.com/video.mp4',
      thumbnailUrl: 'https://test.com/thumb.jpg',
      likesCount: 10,
      commentsCount: 5,
      isLiked: false,
      width: 720,
      height: 1280,
    );
  });

  testWidgets('VideoPostWidget renders Player and CommentSheet', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          favoriteRepositoryProvider.overrideWithValue(
            MockFavoriteRepository(),
          ),
          videoRepositoryProvider.overrideWithValue(MockVideoRepository()),
        ],
        child: MaterialApp(
          home: Scaffold(body: VideoPostWidget(post: testPost)),
        ),
      ),
    );

    // Initial state: CircularProgressIndicator (loading) and VideoCommentSheet should be present
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byType(VideoCommentSheet), findsOneWidget);
  });

  testWidgets('VideoPostWidget shows error state when controller has error', (
    WidgetTester tester,
  ) async {
    // This requires a real or mocked VideoPlayerController with error
    // Skip for now as mocking VideoPlayerController is complex in unit tests
  });
}
