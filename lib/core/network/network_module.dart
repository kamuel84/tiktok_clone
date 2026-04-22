import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/video_list/data/apis/favorite_api.dart';
import '../../features/video_list/data/apis/video_api.dart';
import 'dio_provider.dart';

final videoApiProvider = Provider<VideoApi>((ref) {
  final dio = ref.watch(dioProvider);
  return VideoApi(dio);
});

final favoriteApiProvider = Provider<FavoriteApi>((ref) {
  final dio = ref.watch(dioProvider);
  return FavoriteApi(dio);
});
