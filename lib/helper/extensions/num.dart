import 'package:flutter_test/flutter_test.dart';

extension IntFormater on int {
  // 0 - 999 => '0' | '999'
  // 1000 - 9999 -> '1N' | '9.9N' |
  // 10.000 - 999.999 -> '900N' | '915N'
  // 1.000.000 - 99.999.999 -> 1TR | 9.9TR | 10.1TR
  // 100.000.000 - 999.999.999 -> 100TR | 101TR | 999TR
  /// Dùng để convert các số không cần chính xác
  /// Số lượng comment, số like, số lượng rating
  String toStringAsCountable({bool? shortenUnit = false}) {
    if (this < 0) {
      return '-${(-this).toStringAsCountable(shortenUnit: shortenUnit)}';
    }
    if (this >= 0 && this < 1e3) {
      return '$this';
    }
    if (this >= 1e3 && this <= 999999) {
      final d = (this / 1e3).toStringAsFixedWithoutRounding();
      return '$d${shortenUnit == true ? 'K' : ' Nghìn'}';
    }
    if (this >= 1e6 && this <= 999999999) {
      final d = (this / 1e6).toStringAsFixedWithoutRounding();
      return '$d${shortenUnit == true ? 'Tr' : ' Triệu'}';
    }
    if (this >= 1e9 && this <= 999999999999) {
      final d = (this / 1e9).toStringAsFixedWithoutRounding();
      return '$d Tỷ';
    }
    return '>999 Tỷ';
  }

  void _test() {
    // flutter: 00:00 +1: IntFormatter returns correct string for values between 1000 and 999999
    // flutter: 00:00 +2: IntFormatter returns correct string for values between 1000000 and 999999999
    // flutter: 00:00 +3: IntFormatter returns correct string for values between 1000000000 and 999999999999
    // flutter: 00:00 +4: IntFormatter returns ">999 Tỷ" for values greater than 999999999999
    // flutter: 00:00 +5: IntFormatter returns correct string for negative values
    // flutter: 00:00 +6: All tests passed!
    group(
      'IntFormater',
      () {
        test('returns correct string for values between 0 and 999', () {
          expect(0.toStringAsCountable(), equals('0'));
          expect(123.toStringAsCountable(), equals('123'));
          expect(999.toStringAsCountable(), equals('999'));
        });

        test('returns correct string for values between 1000 and 999999', () {
          expect(1000.toStringAsCountable(), equals('1 Nghìn'));
          expect(12345.toStringAsCountable(), equals('12.3 Nghìn'));
          expect(999999.toStringAsCountable(), equals('999.9 Nghìn'));
          expect(1000.toStringAsCountable(shortenUnit: true), equals('1K'));
          expect(12345.toStringAsCountable(shortenUnit: true), equals('12.3K'));
          expect(
            999999.toStringAsCountable(shortenUnit: true),
            equals('999.9K'),
          );
        });

        test('returns correct string for values between 1000000 and 999999999',
            () {
          expect(1000000.toStringAsCountable(), equals('1 Triệu'));
          expect(12345678.toStringAsCountable(), equals('12.3 Triệu'));
          expect(999999999.toStringAsCountable(), equals('999.9 Triệu'));
          expect(1000000.toStringAsCountable(shortenUnit: true), equals('1Tr'));
          expect(
            12345678.toStringAsCountable(shortenUnit: true),
            equals('12.3Tr'),
          );
          expect(
            999999999.toStringAsCountable(shortenUnit: true),
            equals('999.9Tr'),
          );
        });

        test(
            'returns correct string for values between 1000000000 and 999999999999',
            () {
          expect(1000000000.toStringAsCountable(), equals('1 Tỷ'));
          expect(123456789012.toStringAsCountable(), equals('123.4 Tỷ'));
          expect(999999999999.toStringAsCountable(), equals('999.9 Tỷ'));
        });

        test('returns "> 999TR" for values greater than 999999999999', () {
          expect(1000000000000.toStringAsCountable(), equals('>999 Tỷ'));
          expect(9999999999999.toStringAsCountable(), equals('>999 Tỷ'));
        });

        test('returns correct string for negative values', () {
          expect((-123).toStringAsCountable(), equals('-123'));
          expect(
            (-12345).toStringAsCountable(shortenUnit: true),
            equals('-12.3K'),
          );
          expect((-123456789).toStringAsCountable(), equals('-123.4 Triệu'));
        });
      },
    );
  }
}

extension CurrencyFormater on num {
  String toStringAsCountable({bool? shortenUnit = false}) {
    if (this < 0) {
      return '-${(-this).toStringAsCountable(shortenUnit: shortenUnit)}';
    }
    if (this >= 0 && this < 1e3) {
      return '$this';
    }
    if (this >= 1e3 && this <= 999999) {
      final d = (this / 1e3).toStringAsFixedWithoutRounding();
      return '$d${shortenUnit == true ? 'K' : ' Nghìn'}';
    }
    if (this >= 1e6 && this <= 999999999) {
      final d = (this / 1e6).toStringAsFixedWithoutRounding();
      return '$d${shortenUnit == true ? 'Tr' : ' Triệu'}';
    }
    if (this >= 1e9 && this <= 999999999999) {
      final d = (this / 1e9).toStringAsFixedWithoutRounding();
      return '$d Tỷ';
    }
    return '>999 Tỷ';
  }
}

extension DoubleFormat on double {
  // reason for this function: using toStringAsFixed(1) or NumberFormat on
  // decimal number like X.9999.., or X.899...., will be automatically rounded
  // to (X+1).0 but we just want the result X.99... or X.8999... without rounded
  String toStringAsFixedWithoutRounding({int numOfDecimal = 1}) {
    final s = toString().split('.');
    if (s[1].isNotEmpty && numOfDecimal <= s[1].length) {
      final t = int.parse(s[1].substring(0, numOfDecimal));
      return t > 0 ? '${s[0]}.$t' : s[0];
    }
    return s[0];
  }
}
