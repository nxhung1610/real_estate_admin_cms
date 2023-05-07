import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/services.dart';

/// to improve UX, all screen must use this bottom padding
/// to help user can tap bottom item easier
const double bottomComfortablePadding = 36;

/// use with TextField to format input text as currency
CurrencyTextInputFormatter get defaultCurrencyFormatter =>
    CurrencyTextInputFormatter(
      locale: 'vi',
      symbol: 'đ',
      decimalDigits: 0,
    );

CurrencyTextInputFormatter get currencyFormatWithoutSymbol =>
    CurrencyTextInputFormatter(
      locale: 'vi',
      decimalDigits: 0,
      symbol: '',
    );

// Format
final formatCurrency = CurrencyTextInputFormatter(
  symbol: 'đ',
  decimalDigits: 0,
  locale: 'vi',
);
final formatArea = CurrencyTextInputFormatter(
  decimalDigits: 0,
  locale: 'vi',
);
final limitFormat = LengthLimitingTextInputFormatter(
  15,
  maxLengthEnforcement: MaxLengthEnforcement.enforced,
);

CurrencyTextInputFormatter get defaultCurrency =>
    CurrencyTextInputFormatter(symbol: 'đ', decimalDigits: 0, locale: 'vi_VN');
const phoneNumberMaxLength = 10;

/// Thời gian chờ giữa các lần search
/// Ví dụ user gõ liên tục, nếu các lần nghỉ dưới 500ms => không search
const debounceLiveSearch = 500;
const locale = 'vi';
const String notAvailable = 'Chưa cập nhật';
