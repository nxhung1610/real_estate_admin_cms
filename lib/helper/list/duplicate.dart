extension DuplicateExtension<T> on Iterable<T> {
  Iterable<T> removeDuplicate<E>(E Function(T e) onPro) {
    var seen = <E>{};
    List<T> uniquelist = where((e) => seen.add(onPro.call(e))).toList();
    return uniquelist;
  }
}
