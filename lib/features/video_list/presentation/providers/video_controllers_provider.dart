import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';

import '../../domain/entities/video_post.dart';
import 'video_list_provider.dart';

part 'video_controllers_provider.g.dart';

@riverpod
class VideoControllersProvider extends _$VideoControllersProvider {
  @override
  FutureOr<List<VideoPlayerController>> build() async {
    final videoList = ref.watch(videoListProvider).value;

    return _initializeControllers(videoList);
  }

  Future<List<VideoPlayerController>> _initializeControllers(
    List<VideoPost>? videoList,
  ) async {
    if (videoList == null || videoList.isEmpty) return [];

    final controllers = state.value ?? [];

    if (controllers.isEmpty) {
      final newControllers = videoList
          .map(
            (video) =>
                VideoPlayerController.networkUrl(Uri.parse(video.videoUrl)),
          )
          .toList();

      //controllers(비디오 리스트)가 1개 이상일 때 첫번째 비디오 컨트롤러를 초기화 및 재생
      if (newControllers.isNotEmpty) {
        await newControllers[0].initialize();
        newControllers[0].setLooping(true);
        newControllers[0].play();
      }

      //controllers(비디오 리스트)가 1개 초과 일 때 2번째 비디오 컨트롤러를 초기화
      if (newControllers.length > 1) {
        await newControllers[1].initialize();
        newControllers[1].setLooping(true);
      }

      return newControllers;
    } else if (controllers.length < videoList.length) {
      final addedControllers = videoList
          .skip(controllers.length)
          .map(
            (video) =>
                VideoPlayerController.networkUrl(Uri.parse(video.videoUrl)),
          )
          .toList();

      return [...controllers, ...addedControllers];
    }

    return controllers;
  }

  void onPageChanged(int currentPageIndex) {
    final videoList = ref.read(videoListProvider).value;
    _managerVideoControllers(currentPageIndex, videoList);
  }

  /// 특정 인덱스의 컨트롤러 초기화를 미리 시작합니다. (itemBuilder에서 사용)
  void initController(int index) {
    final controllers = state.value;
    if (controllers == null || index < 0 || index >= controllers.length) return;

    final controller = controllers[index];
    if (!controller.value.isInitialized) {
      controller
          .initialize()
          .then((_) {
            controller.setLooping(true);
          })
          .catchError((e) => print('Early init error at index $index: $e'));
    }
  }

  void _managerVideoControllers(int currentPageIndex, List<VideoPost>? videos) {
    if (videos == null) return;

    final controllers = state.value;
    if (controllers == null || controllers.isEmpty) return;

    final int totalControllers = controllers.length;

    // 1. 현재 비디오 최우선 처리 (동기적 상태 체크 후 재생)
    final currentController = controllers[currentPageIndex];
    if (currentController.value.isInitialized) {
      if (!currentController.value.isPlaying) {
        currentController.play();
      }
    } else {
      // 아직 초기화 전이라면 즉시 초기화 후 재생 트리거
      currentController
          .initialize()
          .then((_) {
            currentController.setLooping(true);
            currentController.play();
          })
          .catchError(
            (e) => print('Error initing current at $currentPageIndex: $e'),
          );
    }

    // 2. 주변 비디오 프리로딩 (비동기, Buffer 2)
    final preloadBuffer = 2;
    for (
      int i = currentPageIndex - 1;
      i <= currentPageIndex + preloadBuffer;
      i++
    ) {
      if (i >= 0 && i < totalControllers && i != currentPageIndex) {
        final ctrl = controllers[i];
        if (!ctrl.value.isInitialized) {
          ctrl
              .initialize()
              .then((_) {
                ctrl.setLooping(true);
              })
              .catchError((e) => print('Error preloading at $i: $e'));
        }
        // 인접한 영상들은 재생 중이라면 일시 정지 (메인 영상만 재생)
        if (ctrl.value.isPlaying) {
          ctrl.pause();
          //화면에서 벗어났다가 다시 돌아오면 처음 부터 재생하기 위해서 0번째 위치로 이동
          ctrl.seekTo(Duration.zero);
        }
      }
    }

    // 3. 범위를 벗어난 컨트롤러 정리
    // 사용자가 방금 지나온 영상이 바로 멈추지 않도록 Buffer를 둠
    final activeRange = {
      for (
        int i = currentPageIndex - 1;
        i <= currentPageIndex + preloadBuffer;
        i++
      )
        i,
    };

    for (int i = 0; i < totalControllers; i++) {
      if (!activeRange.contains(i)) {
        final ctrl = controllers[i];
        if (ctrl.value.isInitialized) {
          // 비동기로 정리
          _disposeAndReplaceController(i, videos[i].videoUrl);
        } else if (ctrl.value.isPlaying) {
          ctrl.pause();
        }
      }
    }
  }

  void _disposeAndReplaceController(int index, String videoUrl) async {
    final controllers = state.value;
    if (controllers == null || index >= controllers.length) return;

    final oldController = controllers[index];
    await oldController.dispose();

    // 새 인스턴스 생성
    final newController = VideoPlayerController.networkUrl(Uri.parse(videoUrl));

    // 리스트 업데이트 및 상태 전파
    final newList = List<VideoPlayerController>.from(controllers);
    newList[index] = newController;
    state = AsyncValue.data(newList);
  }
}
