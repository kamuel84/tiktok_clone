import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/apis/favorite_api.dart';
import '../../data/repositories/mock_favorite_repository_impl.dart';
import '../../data/repositories/mock_video_repository_impl.dart';
import '../../domain/entities/favorite_count.dart';
import '../../domain/entities/video_post.dart';
import '../../domain/repositories/favorite_repository.dart';
import '../../domain/repositories/video_repository.dart';
import '../../domain/usecases/favorite_video_use_case.dart';
import '../../domain/usecases/get_video_posts_use_case.dart';

part 'video_list_provider.g.dart';

// Providers
final videoRepositoryProvider = Provider<VideoRepository>(
  (ref) => MockVideoRepositoryImpl(),
);

final favoriteApiProvider = Provider<FavoriteApi>((ref) {
  final dio = ref.watch(dioProvider);
  return FavoriteApi(dio);
});

final favoriteRepositoryProvider = Provider<FavoriteRepository>((ref) {
  final api = ref.watch(favoriteApiProvider);
  return MockFavoriteRepositoryImpl(api);
});

final favoriteVideoUseCaseProvider = Provider<FavoriteVideoUseCase>((ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return FavoriteVideoUseCase(repository);
});

final getVideoPostsUseCaseProvider = Provider((ref) {
  final repository = ref.watch(videoRepositoryProvider);
  return GetVideoPostsUseCase(repository);
});

@riverpod
class VideoList extends _$VideoList {
  int _listPage = 0;

  @override
  Future<List<VideoPost>> build() async {
    return _fetchVideoPosts(_listPage);
  }

  Future<List<VideoPost>> _fetchVideoPosts(int page, {int size = 20}) async {
    final useCase = ref.read(getVideoPostsUseCaseProvider);
    return await useCase.execute(page, size: size);
  }

  Future<void> loadNextPage() async {
    _listPage++;
    state = await AsyncValue.guard(() async {
      final newVideos = await _fetchVideoPosts(_listPage);
      return [...state.value!, ...newVideos];
    });
  }

  Future<void> toggleFavorite(String postId) async {
    final useCase = ref.read(favoriteVideoUseCaseProvider);
    final posts = state.value;
    if (posts == null) return;

    final index = posts.indexWhere((p) => p.id == postId);
    if (index == -1) return;

    final post = posts[index];
    final isLiking = !post.isLiked;

    // UI 즉각 동기화 (Optimistic Update)
    state = AsyncValue.data([
      for (final p in posts)
        if (p.id == postId)
          p.copyWith(
            isLiked: isLiking,
            likesCount: isLiking ? p.likesCount + 1 : p.likesCount - 1,
          )
        else
          p,
    ]);

    try {
      if (isLiking) {
        await useCase.setFavorite(postId);
      } else {
        await useCase.removeFavorite(postId);
      }
    } catch (e) {
      // 에러 발생 시 롤백
      state = AsyncValue.data([
        for (final p in posts)
          if (p.id == postId) post else p,
      ]);
    }
  }

  Future<void> addFavoriteCount(FavoriteCount favoriteCount) async {
    final posts = state.value;
    if (posts == null) return;

    state = AsyncValue.data([
      for (final video in posts)
        if (video.id == favoriteCount.id)
          video.copyWith(
            likesCount: video.likesCount + 1 == favoriteCount.favoriteCount
                ? video.likesCount + 1
                : favoriteCount.favoriteCount,
          )
        else
          video,
    ]);
  }

  Future<void> removeFavoriteCount(FavoriteCount favoriteCount) async {
    final posts = state.value;
    if (posts == null) return;

    state = AsyncValue.data([
      for (final video in posts)
        if (video.id == favoriteCount.id)
          video.copyWith(
            likesCount: video.likesCount - 1 == favoriteCount.favoriteCount
                ? video.likesCount - 1
                : favoriteCount.favoriteCount,
          )
        else
          video,
    ]);
  }
}
