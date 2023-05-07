import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_admin_cms/features/auth/features/login/application/login_bloc.dart';
import 'package:real_estate_admin_cms/features/auth/features/login/presentation/login_page.dart';
import 'package:real_estate_admin_cms/features/common/presentation/base_page.dart';
import 'package:real_estate_admin_cms/features/common/router/base_router.dart';

class AuthRoute extends BaseRoute {
  AuthRoute({required super.parent, required super.path});
  BaseRoutePath get login => subRoutePath('login');

  @override
  List<AppRouteBase> appRoutes(bool nested) {
    return [
      AppRouteBase(
        routePath: routePath,
        nested: nested,
        routes: [
          AppRouteBase(
            routePath: login,
            nested: true,
            onRoute: (url, childRoutes) {
              return GoRoute(
                path: url,
                routes: childRoutes,
                pageBuilder: (context, state) {
                  return CupertinoPage(
                    child: ContainerPage<LoginBloc, LoginState>(
                      page: const LoginPage(),
                    ),
                  );
                },
              );
            },
          )
        ],
        onRoute: (url, childRoutes) {
          return GoRoute(
            path: url,
            routes: childRoutes,
            pageBuilder: (context, state) => CupertinoPage(
              child: Scaffold(body: Container()),
            ),
            redirect: (context, state) => login.url,
          );
        },
      )
    ];
  }

  @override
  void setupRoutes() {}
}
