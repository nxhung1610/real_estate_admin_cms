library core;

import 'package:core/module/base_modular.dart';
import 'package:get_it/get_it.dart';

export 'module/module.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:fluent_ui/fluent_ui.dart';
export 'router/base_route.dart';
export 'presentation/presentation.dart';

final getIt = GetIt.instance;

class ModularCore extends BaseModular {
  ModularCore._();
  @override
  Future<void> initial() async {}
}
