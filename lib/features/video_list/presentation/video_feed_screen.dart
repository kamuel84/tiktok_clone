import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supercent_project/features/video_list/presentation/providers/video_controllers_provider.dart';
import 'providers/video_list_provider.dart';
import 'widgets/video_post_widget.dart';

class VideoFeedScreen extends ConsumerStatefulWidget {
  const VideoFeedScreen({super.key});

  @override
  ConsumerState<VideoFeedScreen> createState() => _VideoFeedScreenState();
}

class _VideoFeedScreenState extends ConsumerState<VideoFeedScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final videoPostsAsync = ref.watch(videoListProvider);
    final videoControllersProvider = ref.watch(
      videoControllersProviderProvider,
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: videoPostsAsync.when(
        data: (posts) => PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            // 트리거: 해당 인덱스의 비디오 컨트롤러 미리 초기화 시작
            ref
                .read(videoControllersProviderProvider.notifier)
                .initController(index);

            //비디오 컨트롤러가 없거나 비디오 컨트롤러가 비어있거나 비디오 컨트롤러가 현재 인덱스보다 작으면 로딩
            if (videoControllersProvider.value == null ||
                videoControllersProvider.value!.isEmpty ||
                videoControllersProvider.value!.length <= index) {
              return const Center(child: CircularProgressIndicator());
            }

            return VideoPostWidget(
              post: posts[index],
              controller: videoControllersProvider.value![index],
            );
          },
          controller: _pageController,
          onPageChanged: (index) {
            ref
                .read(videoControllersProviderProvider.notifier)
                .onPageChanged(index);

            //마지막 페이지 전 페이지에서 다음 페이지를 가지고 오도록 추가
            if (index == posts.length - 2) {
              ref.read(videoListProvider.notifier).loadNextPage();
            }
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Text(
            'Error: $err',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
