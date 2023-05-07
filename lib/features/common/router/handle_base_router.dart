import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

import '../presentation/error_page.dart';

abstract class HandleBaseRouter {
  Page<dynamic> handlePageBuilder({
    required Page<dynamic> Function() pageBuilder,
  }) {
    try {
      return pageBuilder.call();
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      return const CupertinoPage(
        child: ErrorPage(),
      );
    }
  }
}
