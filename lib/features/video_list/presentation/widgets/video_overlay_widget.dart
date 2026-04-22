import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:supercent_project/features/video_list/presentation/providers/commend_controller_provider.dart';
import '../../domain/entities/video_post.dart';
import '../providers/video_list_provider.dart';

class VideoOverlayWidget extends ConsumerWidget {
  final VideoPost post;

  const VideoOverlayWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        // Bottom details (UserName and Caption)
        Positioned(
          bottom: 20,
          left: 15,
          right: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@${post.userName}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                post.caption,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        // Right side buttons (Like, Comment, Share)
        Positioned(
          bottom: 20,
          right: 15,
          child: Column(
            children: [
              _buildActionButton(
                Icons.favorite,
                label: post.likesCount.toString(),
                color: post.isLiked ? Colors.red : Colors.white,
                onTap: () {
                  // 하트 아이콘 클릭 시 좋아요 토글 (추가/삭제 모두 가능)
                  ref.read(videoListProvider.notifier).toggleFavorite(post.id);
                },
              ),
              const SizedBox(height: 20),
              _buildActionButton(
                Icons.comment,
                label: post.commentsCount.toString(),
                onTap: () {
                  ref.read(commendControllerProvider.notifier).toggle();
                },
              ),
              const SizedBox(height: 20),
              _buildActionButton(
                Icons.share,
                onTap: () {
                  // 공유 버튼 클릭 시 시스템 공유 창 호출
                  Share.share(
                    '당신을 위한 추천 영상입니다!\n\n${post.caption}\n${post.videoUrl}',
                    subject: '슈퍼센트 비디오 공유',
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(
    IconData icon, {
    String? label,
    Color color = Colors.white,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: 35, color: color),
          if (label != null) ...[
            const SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }
}
