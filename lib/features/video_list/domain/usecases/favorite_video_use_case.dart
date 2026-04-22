import '../repositories/favorite_repository.dart';

class FavoriteVideoUseCase {
  final FavoriteRepository repository;

  FavoriteVideoUseCase(this.repository);

  Future<void> setFavorite(String postId) {
    return repository.setFavoritePost(postId);
  }

  Future<void> removeFavorite(String postId) {
    return repository.removeFavoritePost(postId);
  }
}
