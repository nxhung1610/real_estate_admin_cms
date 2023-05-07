extension Validate on String? {
  bool get isNullOrBlank => this == null || this!.trim().isEmpty;
}
