import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:real_estate_admin_cms/config/app_config.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/features/app/presentation/app.dart';

Future<void> main() async {
  usePathUrlStrategy();

  // Initial
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.instance.initialize('prod');
  await Future.wait([
    configureDependencies(),
  ]);
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  runApp(const App());
}
