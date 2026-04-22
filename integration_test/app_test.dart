import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:supercent_project/main.dart' as app;
import 'package:supercent_project/features/video_list/presentation/widgets/video_post_widget.dart';
import 'package:supercent_project/features/video_list/presentation/widgets/video_comment_sheet.dart';
import 'package:video_player/video_player.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('End-to-End Test', () {
    testWidgets('Verify video feed loading and basic interaction', (tester) async {
      print('--- Starting E2E Test ---');
      
      // 1. Launch the app
      app.main();
      await tester.pumpAndSettle();
      print('App Launched');

      // 2. Wait for Video Initialization
      bool initialized = false;
      for (int i = 0; i < 40; i++) {
        await tester.pump(const Duration(milliseconds: 500));
        if (find.byType(VideoPlayer).evaluate().isNotEmpty) {
          initialized = true;
          break;
        }
      }
      expect(initialized, isTrue, reason: 'Video player did not initialize');
      print('Video Player Initialized');

      // 3. Play/Pause Toggle with Coordinates
      final videoFinder = find.byType(VideoPostWidget).first;
      final center = tester.getCenter(videoFinder);
      
      bool initiallyPaused = find.byIcon(Icons.play_arrow).evaluate().isNotEmpty;
      print('Initially Paused: $initiallyPaused');
      
      // Tap (Single)
      await tester.tapAt(center);
      await tester.pumpAndSettle();
      print('Video Tapped (Single)');

      // 4. Double Tap to Favorite
      print('Testing Double Tap to Favorite');
      await tester.tapAt(center);
      await tester.pump(const Duration(milliseconds: 100));
      await tester.tapAt(center); // Second tap of double tap
      await tester.pumpAndSettle();
      
      // Verify heart icon is red (Favorite icon with color red)
      // Note: VideoOverlayWidget uses Colors.red for isLiked: true
      final redHeartFinder = find.byWidgetPredicate(
        (widget) => widget is Icon && widget.icon == Icons.favorite && widget.color == Colors.red
      );
      expect(redHeartFinder, findsOneWidget, reason: 'Double tap did not turn heart red');
      print('Double Tap Success: Heart is Red');

      // 5. Verify Double Tap again does NOT unlike
      print('Testing Double Tap does not undo favorite');
      await tester.tapAt(center);
      await tester.pump(const Duration(milliseconds: 100));
      await tester.tapAt(center);
      await tester.pumpAndSettle();
      
      expect(redHeartFinder, findsOneWidget, reason: 'Double tap accidentally unliked the video');
      print('Persistence Success: Double tap did not undo favorite');

      // 6. Test Comment Sheet Toggle
      print('Testing Comment Sheet Toggle');
      final commentButtonFinder = find.byIcon(Icons.comment);
      await tester.tap(commentButtonFinder);
      await tester.pumpAndSettle();
      
      // Verify Comment Sheet is visible (height > 0)
      final commentSheetFinder = find.byType(VideoCommentSheet);
      final AnimatedContainer animatedContainer = tester.widget<AnimatedContainer>(
        find.descendant(of: commentSheetFinder, matcher: find.byType(AnimatedContainer))
      );
      expect(animatedContainer.constraints?.maxHeight, greaterThan(0), reason: 'Comment sheet did not open');
      print('Comment Sheet Opened Successfully');

      // Tap close button in comment sheet
      final closeButtonFinder = find.descendant(of: commentSheetFinder, matcher: find.byIcon(Icons.close));
      await tester.tap(closeButtonFinder);
      await tester.pumpAndSettle();
      
      final AnimatedContainer closedContainer = tester.widget<AnimatedContainer>(
        find.descendant(of: commentSheetFinder, matcher: find.byType(AnimatedContainer))
      );
      expect(closedContainer.constraints?.maxHeight, equals(0), reason: 'Comment sheet did not close');
      print('Comment Sheet Closed Successfully');

      // 7. Test Scrolling (Vertical Swipe)
      print('Starting Scroll Test');
      await tester.drag(videoFinder, const Offset(0, -700));
      await tester.pumpAndSettle();
      
      // Wait for the next video
      await tester.pump(const Duration(seconds: 2));
      
      expect(find.byType(VideoPostWidget), findsWidgets);
      print('--- E2E Test Completed Successfully ---');
    });
  });
}
