import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';

import 'app_color.dart';

class AppSnackBar {
  final BuildContext context;
  const AppSnackBar._(this.context);

  static AppSnackBar of(BuildContext context) {
    return AppSnackBar._(context);
  }

  show(String? content) {
    if (content == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        // margin: EdgeInsets.all(
        //   AppSize.extraWidthDimens,
        // ),
        content: Text(
          content,
          style: context.textTheme.bodySmall?.copyWith(
            color: AppColor.kNeutrals_.shade50,
          ),
        ),
        backgroundColor: AppColor.kNeutrals_.shade900,
        duration: const Duration(milliseconds: 2000),
      ),
    );
  }
}

extension AppSnackBarContext on BuildContext {
  AppSnackBar get appSnackBar => AppSnackBar.of(this);
}
