import 'package:supercent_project/features/video_list/domain/entities/favorite_count.dart';

abstract class FavoriteRepository {
  Future<FavoriteCount> setFavoritePost(String postId);
  Future<void> removeFavoritePost(String postId);
}
