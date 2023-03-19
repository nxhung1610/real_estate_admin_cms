import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';

import '../presentation/app_page.dart';

final appRoute = AppRoute(
  '/',
  null,
);

class AppRoute extends BaseRoute {
  AppRoute(super.root, super.path);

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == url) {
      return MaterialPageRoute(
        builder: (context) {
          return const AppPage();
        },
      );
    }
    return null;
  }

  @override
  void setupRoutes() {}
}
