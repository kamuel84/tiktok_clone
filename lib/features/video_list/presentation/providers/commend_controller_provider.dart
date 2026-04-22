import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'commend_controller_provider.g.dart';

@riverpod
class CommendController extends _$CommendController {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    final toggleValue = !state;
    state = toggleValue;
  }
}
