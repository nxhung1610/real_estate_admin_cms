class MigrationUtil {
  MigrationUtil._();
  static List<String> processMigrations(List<String> paths) {
    var result = List<String>.from(paths)
        // Filter valid suffix file
        .where((element) => element.endsWith('.sql'))
        .toList();
    // Sort if use prefix U or R
    // ..sort(
    //   (a, b) {
    //     int priority(String prefix) {
    //       switch (a[0]) {
    //         case 'V':
    //         case 'U':
    //           return 1;
    //         case 'R':
    //           return -1;
    //       }
    //       return 0;
    //     }

    //     return priority(a[0]).compareTo(priority(b[0]));
    //   },
    // );
    return result;
  }
}
