import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data/common/network/server_failure.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

import '../application/I_loading_state.dart';
import '../application/i_failure_state.dart';
import 'mixin/focus_mixin.dart';

class ContainerPage<T extends BlocBase<S>, S> extends StatefulWidget {
  const ContainerPage._({
    super.key,
    required this.globalLoading,
    required this.errorEnable,
    required this.page,
    this.loadingWidget,
    required this.errorWidget,
    required this.builder,
  });

  final bool globalLoading;
  final bool errorEnable;
  final Widget page;
  final Widget Function(Widget child) builder;
  final Widget? loadingWidget;
  final Widget Function(dynamic error)? errorWidget;

  factory ContainerPage.value({
    required T value,
    bool globalLoading = true,
    bool errorEnable = true,
    required Widget page,
    Widget? loadingWidget,
    Widget Function(dynamic error)? errorWidget,
  }) {
    return ContainerPage._(
      globalLoading: globalLoading,
      errorEnable: errorEnable,
      errorWidget: errorWidget,
      page: page,
      loadingWidget: loadingWidget,
      builder: (Widget child) {
        return BlocProvider.value(
          value: value,
          child: child,
        );
      },
    );
  }

  factory ContainerPage({
    bool globalLoading = true,
    bool errorEnable = true,
    required Widget page,
    Widget? loadingWidget,
    Widget Function(dynamic error)? errorWidget,
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) {
    return ContainerPage._(
      globalLoading: globalLoading,
      errorEnable: errorEnable,
      errorWidget: errorWidget,
      page: page,
      loadingWidget: loadingWidget,
      builder: (Widget child) {
        return BlocProvider(
          create: (context) => getIt.call<T>(
            instanceName: instanceName,
            param1: param1,
            param2: param2,
          ),
          child: child,
        );
      },
    );
  }

  @override
  State<ContainerPage> createState() => _ContainerPageState<T, S>();
}

class _ContainerPageState<T extends BlocBase<S>, S>
    extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    final child =
        widget.globalLoading ? widget.page : LoaderOverlay(child: widget.page);
    return widget.builder.call(
      _ContainerPageBuild<T, S>(
        child: child,
      ),
    );
  }
}

class _ContainerPageBuild<T extends BlocBase<S>, S> extends StatefulWidget {
  const _ContainerPageBuild(
      {super.key, required this.child, this.loadingWidget});
  final Widget child;
  final Widget? loadingWidget;

  @override
  State<_ContainerPageBuild> createState() => __ContainerPageBuildState<T, S>();
}

class __ContainerPageBuildState<T extends BlocBase<S>, S>
    extends State<_ContainerPageBuild> with AppFocusMixin {
  late final T bloc;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    bloc = context.read<T>();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  /// Handle server error
  /// with each error will show special popup following [serverFailure]
  void handleServerError(ServerFailure serverFailure) {
    // serverFailure.whenOrNull(
    //   serverDown: () {
    //     switch (context.read<ConnectivityBloc>().state.status) {
    //       case ConnectivityStatus.internet:
    //         showDialogDelay(
    //           serverFailure,
    //           ServerDownBottomPopup.show,
    //         );
    //         break;
    //       case ConnectivityStatus.none:
    //         showDialogDelay(
    //           serverFailure,
    //           NoWifiConnectionBottomPopup.show,
    //         );
    //         break;
    //     }
    //     ;
    //   },
    //   unAuthorized: () {
    //     showDialogDelay(serverFailure, (context) {
    //       showDialog(
    //         barrierDismissible: false,
    //         context: context,
    //         builder: (context) {
    //           return LoginExpiredDialogPopup(
    //             onPressed: () {
    //               context.read<AuthProcessBloc>().add(
    //                     const AuthProcessEvent.onUnAuthenticated(
    //                       forceLogout: false,
    //                     ),
    //                   );
    //             },
    //           );
    //         },
    //       );
    //     });
    //   },
    // );
  }

  Map<ServerFailure, Function(BuildContext context)> actions = {};

  void showDialogDelay(
    ServerFailure serverFailure,
    Function(BuildContext context) onAction,
  ) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    actions[serverFailure] = onAction;
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final list = actions.keys.toList();
      if (list.isNotEmpty) {
        list.sort((a, b) => a.priority.compareTo(b.priority));
        actions[list.first]?.call(context);
      }
      actions.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<T, S>(
      listener: (context, state) {
        if (state is ILoadingState) {
          state.status.whenOrNull(
            loading: () {
              unFocus();
              try {
                context.loaderOverlay.show(
                  widget: widget.loadingWidget,
                );
              } catch (e, trace) {
                printLog(this, error: e, trace: trace, message: e);
              }
            },
            idle: () {
              if (mounted) {
                try {
                  context.loaderOverlay.hide();
                } catch (e, trace) {
                  printLog(this, error: e, trace: trace, message: e);
                }
              }
            },
          );
        }
        if (state is IFailureState) {
          state.status.whenOrNull(
            failure: (value) {
              if (value is IFailureRepository && mounted) {
                if (value is ServerFailure) {
                  handleServerError(value);
                }
              }
            },
          );
        }
      },
      child: widget.child,
    );
  }
}
