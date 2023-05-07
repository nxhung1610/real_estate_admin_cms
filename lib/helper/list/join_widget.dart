import 'package:flutter/material.dart';

extension IterableWidget<T extends Widget> on Iterable<Widget> {
  Iterable<Widget> joinWidget(Widget separator) {
    final iterator = this.iterator;
    if (!iterator.moveNext()) {
      return [];
    }

    final _l = [iterator.current];
    while (iterator.moveNext()) {
      _l
        ..add(separator)
        ..add(iterator.current);
    }
    return _l;
  }
}
