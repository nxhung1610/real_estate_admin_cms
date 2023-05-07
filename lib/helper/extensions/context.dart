import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension UIContext on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);

  // AppThemeExt? get appTheme => Theme.of(this).extension<AppThemeExt>();

  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;

  bool get isSafeArea => MediaQuery.of(this).viewPadding.bottom >= 34.0;

  double get deviceWidth => MediaQuery.of(this).size.width;

  double get deviceHeight => MediaQuery.of(this).size.height;

  void hideKeyboard() => FocusScope.of(this).unfocus();

  void dismiss<T extends Object>([T? result]) =>
      Navigator.of(this).pop<T>(result);

  void showSimpleSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }

  @protected
  void showAlert({
    required String title,
    required String content,
    String? confirmButtonLabel,
    bool barrierDismissible = true,
    VoidCallback? onTapConfirmButton,
  }) {
    // show the dialog
    showDialog<void>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        final Widget okButton = TextButton(
          child: Text(confirmButtonLabel ?? 'OK'),
          onPressed: () {
            Navigator.pop(context);
            onTapConfirmButton?.call();
          },
        );
        // set up the AlertDialog

        return WillPopScope(
          onWillPop: () async => barrierDismissible,
          child: AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              okButton,
            ],
          ),
        );
      },
    );
  }
}

extension Navigation on BuildContext {
  /// Wrapper of Get navigation /// We don't depend on Get to make them decouple and easy to maintain later extension Navigation on BuildContext {
  void justBack() {
    _doBack<void>();
  }

  void back<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
    int? id,
  }) {
    _doBack<T>(
      result: result,
      closeOverlays: closeOverlays,
      canPop: canPop,
      id: id,
    );
  }

  void backUntilFirst() {
    Navigator.of(this).popUntil((route) => route.isFirst);
  }

  void _doBack<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
    int? id,
  }) {
    Navigator.of(this).pop<T>(result);
  }

  void justOffNamed(String page) {
    _doOffNamed<void>(page);
  }

  void offNamedUntil(String page, String untilPage) {
    _doOffNamed<void>(page);
  }

  Future<T?>? offNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) {
    return _doOffNamed<T>(
      page,
      arguments: arguments,
      id: id,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
    );
  }

  Future<T?>? _doOffNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) {
    return Navigator.of(this).popAndPushNamed<T?, dynamic>(
      page,
      arguments: arguments,
    );
  }

  Future<dynamic>? justToNamed(String page) {
    return _toNamed<dynamic>(page);
  }

  Future<T?>? toNamed<T>(
    String page, {
    dynamic arguments,
  }) {
    return _toNamed<T>(
      page,
      arguments: arguments,
    );
  }

  Future<T?>? _toNamed<T>(
    String page, {
    dynamic arguments,
  }) {
    return Navigator.of(this).pushNamed<T>(
      page,
      arguments: arguments,
    );
  }

  dynamic get arguments => ModalRoute.of(this)?.settings.arguments;
}

void showConfirmActionSheet(
  BuildContext context, {
  required String message,
  String confirmButtonLabel = 'Xóa',
  String cancelButtonLabel = 'Hủy',
  required VoidCallback onConfirm,
  bool isDestructiveAction = true,
  VoidCallback? onCancel,
}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      message: Text(
        message,
        style: context.textTheme.bodyLarge,
      ),
      cancelButton: CupertinoActionSheetAction(
        isDefaultAction: true,
        onPressed: () {
          onCancel?.call();
          Navigator.pop(context);
        },
        child: Text(
          cancelButtonLabel,
          style: context.textTheme.bodyLarge,
        ),
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          isDestructiveAction: isDestructiveAction,
          onPressed: () {
            Navigator.pop(context);
            onConfirm.call();
          },
          child: Text(
            confirmButtonLabel,
            style: context.textTheme.titleMedium?.copyWith(
              color: isDestructiveAction
                  ? context.colorScheme.error
                  : context.colorScheme.primary,
            ),
          ),
        )
      ],
    ),
  );
}
