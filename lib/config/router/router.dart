import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_task/config/router/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: HomeRoute.path,
    routes: $appRoutes,
  );
}
