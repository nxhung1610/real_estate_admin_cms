import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/features/common/presentation/error_page.dart';
import 'package:real_estate_admin_cms/features/common/router/base_router.dart';
import 'package:real_estate_admin_cms/features/common/router/go_router_refresh_stream.dart';
import 'package:real_estate_admin_cms/features/connectivity/application/connectivity_bloc.dart';
import 'package:real_estate_admin_cms/helper/.helper.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

import '../../auth/application/auth_bloc.dart';
import '../application/app_bloc.dart';
import '../router/routers.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.call<AppBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt.call<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt.call<ConnectivityBloc>(),
        ),
      ],
      child: const _AppView(),
    );
  }
}

late final GoRouter appRoute;

class _AppView extends StatefulWidget {
  const _AppView({super.key});

  @override
  State<_AppView> createState() => __AppViewState();
}

class __AppViewState extends State<_AppView> {
  late final AuthBloc authBloc;
  late final AppBloc appBloc;

  // Value manage process
  late final Completer processIntital;
  late final Completer processAuthen;

  @override
  void initState() {
    appBloc = context.read<AppBloc>();
    authBloc = context.read<AuthBloc>();
    processIntital = Completer();
    processAuthen = Completer();
    super.initState();
    setupRouter(context);
  }

  void setupRouter(BuildContext context) {
    final routes = allRoutes;
    appRoute = GoRouter(
      // routes: $appRoutes,
      initialLocation: $appRoute.url,
      routes: routes,
      errorBuilder: (context, state) {
        if (kDebugMode) {
          print(state.error);
        }
        return const ErrorPage();
      },
      refreshListenable:
          GoRouterRefreshStream(authBloc.stream.merge([appBloc.stream])),
      redirect: (context, state) {
        String? lastRoute;
        //  Check First Launch
        lastRoute = (() {
          /// Skip these path if unthenticated
          final unAuthentcationRoutes = [
            $authRoute.login.url,
            $authRoute.url,
          ];
          // Wokring with authentication
          // Check if authentication or not
          final isLoggedIn = context.read<AuthBloc>().state.mapOrNull(
                    authentication: (value) => true,
                  ) ??
              false;

          // If user is not login and not in Login or Register page
          // Redirect them to Auth page
          final alreadyInLogin = unAuthentcationRoutes.contains(state.path);
          if (!isLoggedIn && !alreadyInLogin) {
            return $authRoute.url;
          }

          // If user is login and
          // route location not match [Login,Register] will not redirect
          // Or redirect to [Home]
          if (isLoggedIn) {
            if ([...unAuthentcationRoutes, $appRoute.url, ""]
                .contains(state.location)) {
              return $homeRoute.url;
            } else {
              return null;
            }
          }
        })();

        /// Skip if it duplicate
        if (state.location != lastRoute) {
          if (lastRoute == null) {
            printLog(this, message: state.location);
          }
          printLog(this, message: lastRoute);
          return lastRoute;
        } else {
          return null;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
    );
  }
}
