import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/config/env.dart';
import '../models/favorite_count_model.dart';

part 'favorite_api.g.dart';

@RestApi(baseUrl: Env.baseUrl)
abstract class FavoriteApi {
  factory FavoriteApi(Dio dio, {String? baseUrl}) = _FavoriteApi;

  @POST('/posts/{id}/like')
  Future<FavoriteCountModel> likeVideo(@Path('id') String id);

  @DELETE('/posts/{id}/like')
  Future<void> unlikeVideo(@Path('id') String id);
}
