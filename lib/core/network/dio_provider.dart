import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/env.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 10),
      //header 값이 추가로 필요하다면 여기에 추가 한다.
      //headers : {};
    ),
  );

  dio.interceptors.addAll([
    //추후 공통 에러 처리 및 토큰 에러 처리를 위한 인터셉터를 추가 할 수 있다.
    LogInterceptor(),
  ]);

  return dio;
});
