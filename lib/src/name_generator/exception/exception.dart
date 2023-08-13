class NameGeneratorException implements Exception {
  final String reason;

  NameGeneratorException(this.reason);

  @override
  String toString() {
    return reason;
  }
}
