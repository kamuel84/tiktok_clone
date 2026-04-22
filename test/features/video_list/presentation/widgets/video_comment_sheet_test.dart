import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supercent_project/features/video_list/presentation/widgets/video_comment_sheet.dart';
import 'package:supercent_project/features/video_list/presentation/providers/commend_controller_provider.dart';

void main() {
  testWidgets('VideoCommentSheet height changes based on commendControllerProvider', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            body: VideoCommentSheet(onClose: () {}),
          ),
        ),
      ),
    );

    // Get AnimatedContainer
    final animatedContainerFinder = find.byType(AnimatedContainer);
    
    // 1. Initial state (false): height should be 0
    AnimatedContainer container = tester.widget<AnimatedContainer>(animatedContainerFinder);
    expect(container.constraints?.maxHeight, equals(0));

    // 2. Toggle to true
    final container_scope = ProviderScope.containerOf(tester.element(find.byType(VideoCommentSheet)));
    container_scope.read(commendControllerProvider.notifier).toggle();
    await tester.pumpAndSettle();

    // Height should be > 0 (60% of screen height)
    container = tester.widget<AnimatedContainer>(animatedContainerFinder);
    expect(container.constraints?.maxHeight, greaterThan(0));

    // 3. Toggle back to false
    container_scope.read(commendControllerProvider.notifier).toggle();
    await tester.pumpAndSettle();

    container = tester.widget<AnimatedContainer>(animatedContainerFinder);
    expect(container.constraints?.maxHeight, equals(0));
  });
}
