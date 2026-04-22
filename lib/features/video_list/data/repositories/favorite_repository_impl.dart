import 'package:supercent_project/features/video_list/domain/repositories/favorite_repository.dart';

import '../../domain/entities/favorite_count.dart';
import '../apis/favorite_api.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  const FavoriteRepositoryImpl(this.favoriteApi);

  final FavoriteApi favoriteApi;
  @override
  Future<void> removeFavoritePost(String postId) async {
    try {
      await favoriteApi.unlikeVideo(postId);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<FavoriteCount> setFavoritePost(String postId) async {
    try {
      final response = await favoriteApi.likeVideo(postId);
      return response.toEntity();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
