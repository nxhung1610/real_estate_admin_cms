// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_admin_cms/helper/.helper.dart';

part 'base_router.freezed.dart';

@freezed
class BaseRoutePath with _$BaseRoutePath {
  const factory BaseRoutePath({
    required BaseRoutePath? parent,
    required String path,
  }) = _BaseRoutePath;
}

extension BaseRoutePathEx on BaseRoutePath {
  String get url => (() {
        return (parent?.url ?? '').generateUrl([path]);
      })();
}

abstract class BaseRoute {
  @protected
  final String path;

  @protected
  final BaseRoutePath? parent;

  late final BaseRoutePath routePath;
  BaseRoute({
    required this.parent,
    required this.path,
  }) {
    routePath = BaseRoutePath(
      path: path,
      parent: parent,
    );
    setupRoutes();
  }
  String get url => routePath.url;
  void setupRoutes();

  /// This route for nested route
  /// Ex :
  /// * Current route is /app
  /// You want another nested inside like /app/example
  /// Put route in this routes
  @Deprecated(
      'This value has been deprecated. Please use `{appRoutes}` intead.')
  List<RouteBase> get routes => [];

  @protected
  List<AppRouteBase> appRoutes(bool nested) => [];

  List<RouteBase> build() {
    return appRoutes(false).map((e) => e.build()).toList();
  }

  List<AppRouteBase> buildApp(bool nested) {
    return appRoutes(nested);
  }

  // /// This route for independence of current route
  // /// Ex :
  // /// * Current route is /app
  // /// You want another nested inside like /example
  // /// Put route in this globalRoutes
  // List<RouteBase> get globalRoutes => [];
  @protected
  BaseRoutePath subRoutePath(String path) {
    return BaseRoutePath(
      path: path,
      parent: routePath,
    );
  }
}

class AppRouteBase {
  final BaseRoutePath routePath;
  final bool nested;
  final List<AppRouteBase> routes;
  RouteBase Function(String url, List<RouteBase> childRoutes) onRoute;

  AppRouteBase({
    required this.routePath,
    required this.nested,
    this.routes = const [],
    required this.onRoute,
  });

  RouteBase build() {
    late final String url;
    if (nested) {
      url = routePath.path.replaceAll(RegExp(r'^\/|\/$'), '');
    } else {
      url = (routePath.parent?.url ?? '').generateUrl([routePath.path]);
    }
    return onRoute.call(
      url,
      routes.map((e) => e.build()).toList(),
    );
  }
}
