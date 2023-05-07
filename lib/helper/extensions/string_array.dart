import 'package:collection/collection.dart';

import 'string.dart';

extension ListValidate on List<String?> {
  bool get allNotNullOrBlank =>
      firstWhereOrNull((element) => element.isNullOrBlank == true) == null;

  bool get oneOfNotNullOrBlank =>
      firstWhereOrNull(
        (element) => element != null && element.trim().isNotEmpty,
      ) !=
      null;

  bool get oneOfNullOrBlank =>
      firstWhereOrNull(
        (element) => element == null || element.trim().isEmpty,
      ) !=
      null;
}
