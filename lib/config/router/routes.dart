import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_task/features/presentation/homepage.dart';


part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: HomeRoute.path)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return  Homepage();
  }
}

