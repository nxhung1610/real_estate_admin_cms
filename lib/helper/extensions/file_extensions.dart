import 'dart:io';
import 'dart:math';

extension FileExtension on File {
  double sizeOfImage([
    int decimal = 1,
  ]) {
    final file = File(this.path);
    if (file.existsSync()) {
      final bytes = file.lengthSync();
      if (bytes <= 0) {
        return 0;
      }
      // const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
      // var i = (log(bytes) / log(1024)).floor();
      final size = bytes / pow(1000, 2);

      return size;
    }
    return 0;
  }
}
