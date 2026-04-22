import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';
import '../../domain/entities/video_post.dart';
import '../providers/commend_controller_provider.dart';
import 'video_overlay_widget.dart';
import 'video_player_widget.dart';
import 'video_comment_sheet.dart';

class VideoPostWidget extends ConsumerStatefulWidget {
  final VideoPost post;
  final VideoPlayerController? controller;

  const VideoPostWidget({super.key, required this.post, this.controller});

  @override
  ConsumerState<VideoPostWidget> createState() => _VideoPostWidgetState();
}

class _VideoPostWidgetState extends ConsumerState<VideoPostWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    final isInitialized = controller?.value.isInitialized ?? false;
    final hasError = controller?.value.hasError ?? false;

    final commendController = ref.watch(commendControllerProvider.notifier);
    final commendIsOpen = ref.watch(commendControllerProvider);

    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (isInitialized) ...[
                  VideoPlayerWidget(post: widget.post, controller: controller),
                ] else if (hasError)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 50,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '비디오 로딩에 실패 하였습니다.\n${controller?.value.errorDescription ?? "잠시 후 다시 시도 해주세요."}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  const Center(child: CircularProgressIndicator()),

                const Positioned.fill(
                  child: IgnorePointer(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black26,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black54,
                          ],
                          stops: [0.0, 0.2, 0.8, 1.0],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: commendIsOpen ? 0.0 : 1.0,
                    child: IgnorePointer(
                      ignoring: commendIsOpen || !isInitialized || hasError,
                      child: VideoOverlayWidget(post: widget.post),
                    ),
                  ),
                ),
              ],
            ),
          ),
          VideoCommentSheet(onClose: commendController.toggle),
        ],
      ),
    );
  }
}
