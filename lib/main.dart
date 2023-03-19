import 'package:app/app.dart';
import 'package:app/presentation/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // Initial
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    modularApp.initial(),
  ]);

  runApp(const App());
}
