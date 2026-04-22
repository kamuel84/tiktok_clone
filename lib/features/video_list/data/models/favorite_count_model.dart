import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/favorite_count.dart';

part 'favorite_count_model.g.dart';
part 'favorite_count_model.freezed.dart';

@freezed
abstract class FavoriteCountModel with _$FavoriteCountModel {
  const FavoriteCountModel._();

  const factory FavoriteCountModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'likesCount') @Default(0) int likesCount,
  }) = _FavoriteCountModel;

  factory FavoriteCountModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteCountModelFromJson(json);

  FavoriteCount toEntity() {
    return FavoriteCount(id: id, favoriteCount: likesCount);
  }
}
