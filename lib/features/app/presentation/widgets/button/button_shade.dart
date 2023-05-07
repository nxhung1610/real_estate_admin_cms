import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/features/app/application/app_bloc.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';

import 'button_enums.dart';

class ButtonShade extends StatelessWidget {
  final String label;
  final Widget? icon;
  final ButtonIconAlign iconAlign;
  final VoidCallback? onPressed;
  final ButtonScaleStyle style;
  const ButtonShade({
    super.key,
    required this.label,
    this.icon,
    this.iconAlign = ButtonIconAlign.left,
    this.onPressed,
    this.style = ButtonScaleStyle.expand,
  });

  @override
  Widget build(BuildContext context) {
    Widget child;

    /// Text Style
    TextStyle? textStyle;

    textStyle = context.textTheme.bodyMedium?.copyWith(
      color: context.textTheme.displayLarge?.color,
      fontWeight: FontWeight.bold,
    );

    /// Background Btn
    Color? backgroundColor;
    backgroundColor = AppColor.kNeutrals_.shade500.withOpacity(0.5);

    child = Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.largeHeightDimens,
        horizontal: AppSize.extraLargeWidthDimens,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: iconAlign == ButtonIconAlign.left
            ? TextDirection.ltr
            : TextDirection.rtl,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(
              width: 10,
            )
          ],
          Text(
            label,
            style: textStyle,
          )
        ],
      ),
    );

    child = ElevatedButton(
      style: context.theme.elevatedButtonTheme.style?.copyWith(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
      ),
      onPressed: onPressed,
      child: child,
    );

    // Scale style
    switch (style) {
      case ButtonScaleStyle.expand:
        child = SizedBox(
          width: double.infinity,
          child: child,
        );
        break;
      case ButtonScaleStyle.tight:
        break;
    }

    return child;
  }
}
