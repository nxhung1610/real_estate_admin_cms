import 'package:app/bloc/app_bloc.dart';
import 'package:app/di/injection_dependences.dart';
import 'package:app/router/app_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../languages/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.call<AppBloc>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            initialRoute: appRoute.url,
            onGenerateRoute: appRoute.onGenerateRoute,
            builder: (context, child) {
              return child ?? Container();
            },
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
