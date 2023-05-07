import 'package:flutter/widgets.dart';

mixin AppFocusMixin {
  void unFocus() {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
  }
}
