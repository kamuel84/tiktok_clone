import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supercent_project/features/video_list/presentation/video_feed_screen.dart';
import 'package:supercent_project/features/video_list/presentation/providers/video_list_provider.dart';
import 'package:supercent_project/features/video_list/domain/entities/video_post.dart';
import 'package:supercent_project/features/video_list/domain/repositories/video_repository.dart';

// Manual Fake for VideoRepository
class FakeVideoRepository implements VideoRepository {
  @override
  Future<List<VideoPost>> getVideoPosts(int page, {int size = 20}) async {
    return [
      VideoPost(
        id: '1',
        userName: 'Test User',
        caption: 'Test Caption',
        videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        thumbnailUrl: 'https://flutter.github.io/assets-for-api-docs/assets/images/honey_bee.jpg',
        likesCount: 100,
        commentsCount: 10,
        isLiked: false,
      ),
    ];
  }
}

void main() {
  testWidgets('VideoFeedScreen shows PageView after loading data', (WidgetTester tester) async {
    // 1. Build our app and trigger a frame.
    // We override videoRepositoryProvider to use our FakeVideoRepository.
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          videoRepositoryProvider.overrideWithValue(FakeVideoRepository()),
        ],
        child: const MaterialApp(
          home: VideoFeedScreen(),
        ),
      ),
    );

    // 2. Check for loading indicator initially
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // 3. Rebuild to let the future complete
    await tester.pump(); // Start the future
    await tester.pump(const Duration(seconds: 1)); // Wait for it

    // 4. Verify that PageView is rendered
    expect(find.byType(PageView), findsOneWidget);
    
    // 5. Verify the content from our Fake repository is appearing
    // VideoPostWidget should be there but maybe not initialized yet (needs controller)
    // We can at least check if the text from our mock data is in the tree eventually
  });
}
