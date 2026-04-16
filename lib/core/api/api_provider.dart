import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:instagram_task/core/api/api_helper.dart';
import 'package:instagram_task/core/api/dio_api_helper.dart';
import 'package:instagram_task/core/api/json_response_interceptor.dart';
import 'package:instagram_task/core/api/language_interceptor.dart';
import 'package:instagram_task/core/api/token_interceptor.dart';
import 'package:instagram_task/core/cache/cache_provider.dart';
import 'package:instagram_task/core/event_bus/app_event_bus.dart';
import 'package:instagram_task/core/locale/locale_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'api_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: dotenv.get('PRODUCTION_BASE_URL'),
      validateStatus: (status) => true, // Always validate status
    ),
  );

  final tokenInterceptor = TokenInterceptor(
    dio,
    ref.watch(cacheHelperProvider),
    ref.watch(appEventBusProvider),
  );

  dio.interceptors.addAll([
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    ),
    LanguageInterceptor(ref.watch(localeProvider)),
    tokenInterceptor,
    JsonResponseInterceptor(),
  ]);

  // Store the token interceptor for disposal
  ref.onDispose(() {
    tokenInterceptor.dispose();
  });

  return dio;
}

@Riverpod(keepAlive: true)
ApiHelper<Response> apiHelper(Ref ref) {
  return DioApiHelper(ref.watch(dioProvider));
}
