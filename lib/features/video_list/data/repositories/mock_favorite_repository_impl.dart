import 'package:supercent_project/features/video_list/domain/entities/favorite_count.dart';
import 'package:supercent_project/features/video_list/domain/repositories/favorite_repository.dart';

import '../apis/favorite_api.dart';

class MockFavoriteRepositoryImpl implements FavoriteRepository {
  const MockFavoriteRepositoryImpl(this.favoriteApi);

  final FavoriteApi favoriteApi;
  @override
  Future<void> removeFavoritePost(String postId) async {
    try {
      // Mock delay
      await Future.delayed(const Duration(milliseconds: 100));
    } catch (e) {
      // Ignore
    }
  }

  @override
  Future<FavoriteCount> setFavoritePost(String postId) async {
    try {
      final favorite = FavoriteCount(id: postId, favoriteCount: 4000);

      return favorite;
    } catch (e) {
      return FavoriteCount(id: postId, favoriteCount: 0);
    }
  }
}
