import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_admin_cms/features/common/presentation/base_page.dart';
import 'package:real_estate_admin_cms/features/common/router/base_router.dart';
import 'package:real_estate_admin_cms/features/home/application/home/home_bloc.dart';
import 'package:real_estate_admin_cms/features/home/presentation/home_page.dart';

class HomeRoute extends BaseRoute {
  HomeRoute({required super.parent, required super.path});
  @override
  List<AppRouteBase> appRoutes(bool nested) {
    return [
      AppRouteBase(
        routePath: routePath,
        nested: nested,
        onRoute: (url, childRoutes) {
          return GoRoute(
              path: url,
              pageBuilder: (context, state) {
                return CupertinoPage(
                  child: ContainerPage<HomeBloc, HomeState>(
                    page: const HomePage(),
                  ),
                );
              });
        },
      )
    ];
  }

  @override
  void setupRoutes() {
    // TODO: implement setupRoutes
  }
}
