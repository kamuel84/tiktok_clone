import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

import '../../domain/entities/video_post.dart';
import '../providers/commend_controller_provider.dart';
import '../providers/video_list_provider.dart';

class VideoPlayerWidget extends ConsumerStatefulWidget {
  final VideoPost post;
  final VideoPlayerController? controller;

  const VideoPlayerWidget({super.key, required this.post, this.controller});

  @override
  ConsumerState<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends ConsumerState<VideoPlayerWidget> {
  bool _isDragging = false;
  double _dragProgress = 0.0;
  bool _wasPlayingBeforeDrag = false;

  void _onControllerUpdate() {
    if (mounted && !_isDragging) {
      setState(() {});
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(_onControllerUpdate);
  }

  @override
  void didUpdateWidget(VideoPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller?.removeListener(_onControllerUpdate);
      widget.controller?.addListener(_onControllerUpdate);
    }
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_onControllerUpdate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    final isVertical =
        (widget.post.width ?? 0.0) <= (widget.post.height ?? 0.0);

    final commendIsOpen = ref.watch(commendControllerProvider);

    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (controller.value.isPlaying) {
                controller.pause();
              } else {
                controller.play();
              }
            },
            onDoubleTap: () {
              if (!widget.post.isLiked) {
                ref
                    .read(videoListProvider.notifier)
                    .toggleFavorite(widget.post.id);
              }
            },
            onLongPress: () {
              Share.share(
                '당신을 위한 추천 영상입니다!\n\n${widget.post.caption}\n${widget.post.videoUrl}',
                subject: '슈퍼센트 비디오 공유',
              );
            },
            child: !isVertical || commendIsOpen
                ? Center(
                    child: AspectRatio(
                      aspectRatio: controller!.value.aspectRatio,
                      child: VideoPlayer(controller),
                    ),
                  )
                : AspectRatio(
                    aspectRatio: controller!.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
          ),
        ),
        // 비디오가 일시 정지 상태에서만 노출
        if (!controller.value.isPlaying)
          Center(
            child: GestureDetector(
              onTap: () {
                controller.play();
              },
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),

        if (_isDragging)
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '${_formatDuration(controller.value.duration * _dragProgress)} / ${_formatDuration(controller.value.duration)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onHorizontalDragStart: (details) {
              setState(() {
                _isDragging = true;
                _wasPlayingBeforeDrag = controller.value.isPlaying;
                _dragProgress =
                    controller.value.position.inMilliseconds /
                    controller.value.duration.inMilliseconds;
              });
              controller.pause();
            },
            onHorizontalDragUpdate: (details) {
              final screenWidth = MediaQuery.of(context).size.width;
              setState(() {
                _dragProgress += details.delta.dx / screenWidth;
                _dragProgress = _dragProgress.clamp(0.0, 1.0);
              });
              final seekTo = controller.value.duration * _dragProgress;
              controller.seekTo(seekTo);
            },
            onHorizontalDragEnd: (details) {
              setState(() {
                _isDragging = false;
              });
              if (_wasPlayingBeforeDrag) {
                controller.play();
              }
            },
            child: Container(
              height: 40, // 터치 영역 확대
              alignment: Alignment.bottomCenter,
              child: ValueListenableBuilder(
                valueListenable: controller,
                builder: (context, value, child) {
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      final duration = value.duration.inMilliseconds;
                      final position = value.position.inMilliseconds;

                      final progress = _isDragging
                          ? _dragProgress
                          : (duration == 0 ? 0.0 : position / duration);

                      return Stack(
                        children: [
                          Container(
                            height: 5,
                            width: constraints.maxWidth,
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                          Container(
                            height: 5,
                            width: constraints.maxWidth * progress,
                            color: Colors.white,
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
