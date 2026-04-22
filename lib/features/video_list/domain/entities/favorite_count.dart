import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_count.freezed.dart';

@freezed
abstract class FavoriteCount with _$FavoriteCount {
  const factory FavoriteCount({
    required String id,
    required int favoriteCount,
  }) = _FavoriteCount;
}
