import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/commend_controller_provider.dart';

class VideoCommentSheet extends ConsumerWidget {
  final VoidCallback onClose;

  const VideoCommentSheet({super.key, required this.onClose});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final commentSheetHeight = screenHeight * 0.6;

    final commendController = ref.watch(commendControllerProvider);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: commendController ? commentSheetHeight : 0,
      curve: Curves.easeInOut,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.black),
                      onPressed: onClose,
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    '댓글 기능은 추후 개발 예정입니다.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
