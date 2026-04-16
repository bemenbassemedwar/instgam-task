import 'dart:async';
import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:instagram_task/config/constants.dart';
import 'package:instagram_task/core/cache/cache_helper.dart';
import 'package:instagram_task/core/event_bus/app_event_bus.dart';
import 'package:instagram_task/core/event_bus/session_expired_bus.dart';

class TokenInterceptor extends Interceptor {
  final Dio dio;
  final CacheHelper cacheHelper;
  final EventBus appEventBus;

  bool _isRefreshing = false;
  Completer<void>? _refreshCompleter;
  final List<_QueuedRequest> _queue = [];

  // Store stream subscriptions for proper disposal
  StreamSubscription<AuthCompletedEvent>? _authCompletedSubscription;
  StreamSubscription<AuthCancelledEvent>? _authCancelledSubscription;

  TokenInterceptor(this.dio, this.cacheHelper, this.appEventBus) {
    // Listen to UI re-auth events
    _authCompletedSubscription = appEventBus.on<AuthCompletedEvent>().listen((
      event,
    ) {
      _completeRefresh(event.token);
    });
    _authCancelledSubscription = appEventBus.on<AuthCancelledEvent>().listen((
      event,
    ) {
      _failRefresh(Exception("User cancelled re-authentication"));
    });
  }

  /// Dispose method to cancel stream subscriptions
  void dispose() {
    _authCompletedSubscription?.cancel();
    _authCancelledSubscription?.cancel();
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token =
        await cacheHelper.readStringOrNull(kTemporaryTokenCacheKey) ??
        await cacheHelper.readStringOrNull(kTokenCacheKey);
    if (token != null && options.headers['Authorization'] == null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == 401 &&
        response.data['message'] == 'Token has expired') {
      // Queue request
      final completer = Completer<Response>();
      _queue.add(_QueuedRequest(response.requestOptions, completer));

      if (!_isRefreshing) {
        _isRefreshing = true;
        _refreshCompleter = Completer<void>();

        // 🔥 Fire event → UI shows FaceID/PIN login
        appEventBus.fire(SessionExpiredBus());

        try {
          await _refreshCompleter!.future;

          // Retry all queued requests
          for (final queued in _queue) {
            try {
              final retryResponse = await _retry(queued.requestOptions);
              queued.safeComplete(retryResponse);
            } catch (e, st) {
              queued.safeCompleteError(e, st);
            }
          }
        } finally {
          _queue.clear();
          _isRefreshing = false;
        }
      }

      return handler.resolve(await completer.future);
    }

    handler.next(response);
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final token =
        await cacheHelper.readStringOrNull(kTemporaryTokenCacheKey) ??
        await cacheHelper.readStringOrNull(kTokenCacheKey);

    final options = requestOptions.copyWith(
      headers: {
        ...requestOptions.headers,
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );

    return dio.fetch<dynamic>(options);
  }

  /// ✅ Complete refresh safely
  Future<void> _completeRefresh(String newToken) async {
    await cacheHelper.writeString(kTokenCacheKey, newToken);
    if (_refreshCompleter != null && !_refreshCompleter!.isCompleted) {
      _refreshCompleter!.complete();
    }
  }

  /// ❌ Fail refresh safely
  void _failRefresh(Object error) {
    if (_refreshCompleter != null && !_refreshCompleter!.isCompleted) {
      _refreshCompleter!.completeError(error);
    }
    for (final queued in _queue) {
      queued.safeCompleteError(error);
    }
    _queue.clear();
    _isRefreshing = false;
  }
}

class _QueuedRequest {
  final RequestOptions requestOptions;
  final Completer<Response> completer;

  _QueuedRequest(this.requestOptions, this.completer);

  void safeComplete(Response response) {
    if (!completer.isCompleted) completer.complete(response);
  }

  void safeCompleteError(Object error, [StackTrace? st]) {
    if (!completer.isCompleted) completer.completeError(error, st);
  }
}
