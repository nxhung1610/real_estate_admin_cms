import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  DateTime get toDay {
    return DateTime(year, month, day);
  }

  //Date + 23h 59p 59s
  DateTime get endDay {
    return DateTime(year, month, day)
        .add(const Duration(days: 1))
        .subtract(const Duration(seconds: 1));
  }

  String toDateString({String? locale, String pattern = dd_mm_yyyy}) {
    return DateFormat(pattern).format(this);
  }

  String get toTimeDateString {
    return DateFormat(hh_mm_dd_MM_yyyy).format(this);
  }

  String format({String? locale, required String pattern}) {
    return DateFormat(pattern).format(this);
  }

  // return date time with the same time but with utc format
  // if you want convert to utc time zone, use toUtc()
  DateTime get asUtc {
    return DateTime.utc(year, month, day, hour, minute, second);
  }

  int getDifDays(DateTime end) {
    final dif = end.difference(this);
    return dif.inHours < 24 ? 1 : dif.inDays + 1;
  }

  DateTime addMonth(int count) {
    var cur = this;
    for (var i = 0; i < count; i++) {
      final totalDaysThisMonth = DateTime(cur.year, cur.month + 1, 0).day;
      cur = cur.add(Duration(days: totalDaysThisMonth));
    }
    return cur.subtract(const Duration(seconds: 1));
  }

  DateTime subtractMonth(int count) {
    var cur = this;
    for (var i = 0; i < count; i++) {
      final totalDaysThisMonth = DateTime(cur.year, cur.month - 1, 0).day;
      cur = cur.subtract(Duration(days: totalDaysThisMonth));
    }
    return cur.subtract(const Duration(seconds: 1));
  }

  String getDiffFromToday() {
    final diffDays = DateTime.now().difference(this).inDays;
    final diffHours = DateTime.now().difference(this).inHours;
    final diffMins = DateTime.now().difference(this).inMinutes;

    if (diffDays > 30) {
      return '${(diffDays / 30).round()} tháng trước';
    }
    if (diffDays < 30 && diffDays > 0) {
      return '$diffDays ngày trước';
    }
    if (diffDays == 0 && diffHours <= 24 && diffHours > 0) {
      return '$diffHours tiếng trước';
    }
    if (diffHours == 0 && diffMins <= 60 && diffMins > 0) {
      return '$diffMins phút trước';
    }
    return 'vài giây trước';
  }

  String getTimePresenceFromToday() {
    final diffDays = DateTime.now().difference(this).inDays;
    final diffHours = DateTime.now().difference(this).inHours;
    final diffMins = DateTime.now().difference(this).inMinutes;

    if (diffDays > 365) {
      return 'Truy cập 1 năm trước';
    }
    if (diffDays > 30) {
      return 'Truy cập 1 tháng trước';
    }
    if (diffDays > 1) {
      return 'Truy cập 1 ngày trước';
    }
    if (diffHours > 1) {
      return 'Truy cập 1 tiếng trước';
    }
    if (diffMins > 1) {
      return 'Truy cập 10 phút trước';
    }
    if (diffDays < 1) {
      return 'Vừa truy cập';
    }
    return '';
  }

  RentalTime calculateRentTime(DateTime endDate) {
    assert(compareTo(endDate) <= 0);
    // day count
    var dayCount = 0;
    // month count
    var monthCount = 0;
    // year count
    var yearCount = 0;

    var current = toDay;
    final end = endDate.endDay;
    while (current.compareTo(end) < 0) {
      final daysOfCurrentMonth =
          DateTime(current.year, current.month + 1, 0).day;
      final nextMonth = current.add(Duration(days: daysOfCurrentMonth));

      if (nextMonth.compareTo(end) > 0) {
        final difDays = current.getDifDays(end);
        if (difDays < daysOfCurrentMonth) {
          dayCount += difDays;
        } else {
          final monthPlus = (daysOfCurrentMonth / difDays).round();

          final dayPlus = daysOfCurrentMonth % difDays;

          dayCount += dayPlus;
          monthCount += monthPlus;
        }
      } else {
        monthCount++;
      }
      current = nextMonth;
    }

    if (monthCount >= 12) {
      yearCount = monthCount ~/ 12;
      monthCount = monthCount % 12;
    }
    return RentalTime(
      yearCount: yearCount,
      monthCount: monthCount,
      dayCount: dayCount,
    );
  }

  List<String> getDateRangeFromCurrentDateTime() {
    switch (month) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        return [format(pattern: '$yyyy_mm-01'), format(pattern: '$yyyy_mm-31')];
      case 4:
      case 6:
      case 9:
      case 11:
        return [format(pattern: '$yyyy_mm-01'), format(pattern: '$yyyy_mm-30')];
      case 2:
        final y = year;
        if ((y % 4 == 0 && y % 100 != 0) || y % 400 == 0) {
          return [
            format(pattern: '$yyyy_mm-01'),
            format(pattern: '$yyyy_mm-29')
          ];
        } else {
          return [
            format(pattern: '$yyyy_mm-01'),
            format(pattern: '$yyyy_mm-28')
          ];
        }
    }
    return [];
  }

  DateTime get startOfMonth {
    return DateTime(year, month);
  }
}

class RentalTime {
  const RentalTime({
    required this.yearCount,
    required this.monthCount,
    required this.dayCount,
  });
  final int yearCount;
  final int monthCount;
  final int dayCount;

  String formatToString({String locale = 'vi_VN'}) {
    var result = '';
    if (yearCount > 0) {
      result += '$yearCount năm';
    }
    if (monthCount > 0) {
      result += ', $monthCount tháng';
    }
    if (dayCount > 0) {
      result += ', $dayCount ngày';
    }
    return result;
  }
}

const dd_mm_yyyy = 'dd/MM/yyyy';
const mm_yyyy = 'MM/yyyy';
const hh_mm_dd_MM_yyyy = 'HH:mm $dd_mm_yyyy';
const yyyy_mm = 'yyyy-MM';
const yyyy_mm_dd = 'yyyy-MM-dd';
