library home;

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/di/injection_dependences.dart';

final modularHome = ModularHome._();

@protected
class ModularHome extends BaseModular {
  ModularHome._();
  @override
  Future<void> initial() async {
    configureDependencies();
  }
}
