import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_admin_cms/config/app_dialog.dart';
import 'package:real_estate_admin_cms/config/constant.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

class WDialog extends StatelessWidget {
  final AppDialogType dialogType;
  final String? title;
  final String message;
  final Function? onPositive;
  final Function? onNegative;
  final String? positiveText;
  final String? negativeText;
  const WDialog({
    Key? key,
    this.dialogType = AppDialogType.info,
    this.onPositive,
    this.onNegative,
    this.positiveText,
    this.negativeText,
    this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    String posText = positiveText ?? s.ok;
    String nevText = negativeText ?? s.cancel;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      insetPadding: EdgeInsets.symmetric(horizontal: 0.42.sw),
      elevation: 0,
      child: Container(
        padding: Constants.kDialogPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              dialogType == AppDialogType.info
                  ? s.info
                  : dialogType == AppDialogType.error
                      ? s.error
                      : s.confirm,
            ),
            32.verticalSpace,
            Center(child: Text(message)),
            32.verticalSpace,
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (dialogType == AppDialogType.confirm)
                    ElevatedButton(
                      onPressed: () {
                        onNegative?.call();
                        Navigator.of(context).pop();
                      },
                      child: Text(nevText),
                    ),
                  8.w.horizontalSpace,
                  ElevatedButton(
                    onPressed: () {
                      onPositive?.call();
                      Navigator.of(context).pop();
                    },
                    child: Text(posText),
                  ),
                ],
              ),
            ),
            16.verticalSpace,
          ],
        ),
      ),
    );
  }
}
