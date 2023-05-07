enum SortBy {
  newest(SortByValue.newest),
  priceHighest(SortByValue.priceHighest),
  priceLowest(SortByValue.priceLowest),
  nameAZ(SortByValue.nameAZ),
  nameZA(SortByValue.nameZA),
  newestStatusIdx(SortByValue.newestStatusIdx),
  newestByUpdatedAt(SortByValue.newestByUpdatedAt);

  const SortBy(this.value);

  final String value;

  @override
  String toString() => value;
}

class SortByValue {
  static const newest = 'NEWEST';
  static const priceHighest = 'PRICE_HIGHEST';
  static const priceLowest = 'PRICE_LOWEST';
  static const nameAZ = 'NAME_A_Z';
  static const nameZA = 'NAME_Z_A';
  static const newestStatusIdx = 'NEWEST_STATUS_IDX';
  static const newestByUpdatedAt = 'NEWEST_BY_UPDATED_AT';
}
