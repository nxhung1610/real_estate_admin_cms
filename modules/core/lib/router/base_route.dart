import 'package:flutter/material.dart';

abstract class BaseRoute {
  @protected
  final String? root;
  @protected
  final String? path;
  BaseRoute(this.root, this.path) {
    setupRoutes();
  }

  Route? onGenerateRoute(RouteSettings settings) => null;

  String get url => (() {
        var pathL = [(root ?? ''), (path ?? '')].map(
          (e) {
            return e.replaceAll(RegExp(r'^\/|\/$'), '');
          },
        ).join('/');
        pathL = pathL.replaceAll(RegExp(r'^\/|\/$'), '');
        return Uri.parse('///$pathL').toFilePath();
      })();

  String generatePath(String path) {
    var pathL = [(url), path].map(
      (e) {
        return e.replaceAll(RegExp(r'^\/|\/$'), '');
      },
    ).join('/');
    pathL = pathL.replaceAll(RegExp(r'^\/|\/$'), '');
    return Uri.parse('///$pathL').toFilePath();
  }

  void setupRoutes();
}
