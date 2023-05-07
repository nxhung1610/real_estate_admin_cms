import 'package:go_router/go_router.dart';
import 'package:real_estate_admin_cms/features/auth/router/auth_route.dart';
import 'package:real_estate_admin_cms/features/home/router/home_route.dart';

import 'app_route.dart';

final $appRoute = AppRoute(parent: null, path: '/');
final $authRoute = AuthRoute(parent: $appRoute.routePath, path: '/auth');
final $homeRoute = HomeRoute(parent: $appRoute.routePath, path: '/home');

final allRoutes = <RouteBase>[
  ...$appRoute.build(),
  ...$authRoute.build(),
  ...$homeRoute.build(),
];
