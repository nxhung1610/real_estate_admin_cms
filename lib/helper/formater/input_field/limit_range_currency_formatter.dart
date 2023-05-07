import 'package:flutter/services.dart';

class LimitRangeCurrencyFormatter extends TextInputFormatter {
  LimitRangeCurrencyFormatter({
    required this.min,
    this.max,
    this.defaultIfEmpty = true,
  }) : assert(max == null || (min < max));

  final num min;
  final num? max;
  final bool defaultIfEmpty;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final value = int.tryParse(newValue.text.replaceAll(RegExp('[^0-9]'), ''));
    String? enforceValue;
    if (value != null) {
      if (value < min) {
        enforceValue = min.toString();
      } else if (max != null && value > max!) {
        enforceValue = max.toString();
      } else {
        enforceValue = value.toString();
      }
    } else {
      if (defaultIfEmpty) {
        enforceValue = min.toString();
      }
    }
    // filtered interval result
    if (enforceValue != null) {
      return TextEditingValue(
        text: enforceValue,
        selection: TextSelection.collapsed(
          offset: enforceValue.length,
        ),
      );
    }
    // value that fit requirements
    return newValue;
  }
}
