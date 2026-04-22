import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:supercent_project/features/video_list/data/models/video_post_model.dart';

import '../../../../core/config/env.dart';

part 'video_api.g.dart';

@RestApi(baseUrl: Env.baseUrl)
abstract class VideoApi {
  factory VideoApi(Dio dio, {String? baseUrl}) = _VideoApi;

  @GET('/posts')
  Future<List<VideoPostModel>> getVideos(
    @Query('page') int page,
    @Query('size') int size,
  );
}
