library app;

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

import 'di/injection_dependences.dart';

final modularApp = ModularApp._();

class ModularApp extends BaseModular {
  ModularApp._();
  late final ModularHome home = modularHome;
  @override
  Future<void> initial() async {
    configureDependencies();
    await home.initial();
  }
}
