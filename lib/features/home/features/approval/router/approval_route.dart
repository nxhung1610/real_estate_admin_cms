import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_admin_cms/features/common/presentation/base_page.dart';
import 'package:real_estate_admin_cms/features/common/router/base_router.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/approval_bloc.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/approval_page.dart';

class ApprovalRoute extends BaseRoute {
  ApprovalRoute({required super.parent, required super.path});

  @override
  List<AppRouteBase> appRoutes(bool nested) {
    return [
      AppRouteBase(
        routePath: routePath,
        nested: nested,
        onRoute: (url, childRoutes) {
          return GoRoute(
            path: path,
            pageBuilder: (context, state) {
              return CupertinoPage(
                child: ContainerPage<ApprovalBloc, ApprovalState>(
                  page: const ApprovalPage(),
                ),
              );
            },
          );
        },
      )
    ];
  }

  @override
  void setupRoutes() {
    // TODO: implement setupRoutes
  }
}
