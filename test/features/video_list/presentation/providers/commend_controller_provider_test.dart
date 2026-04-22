import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supercent_project/features/video_list/presentation/providers/commend_controller_provider.dart';

void main() {
  group('CommendController Test', () {
    test('initial state should be false', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      expect(container.read(commendControllerProvider), isFalse);
    });

    test('toggle() should change state from false to true and back to false', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final controller = container.read(commendControllerProvider.notifier);
      
      // First toggle: false -> true
      controller.toggle();
      expect(container.read(commendControllerProvider), isTrue);

      // Second toggle: true -> false
      controller.toggle();
      expect(container.read(commendControllerProvider), isFalse);
    });
  });
}
