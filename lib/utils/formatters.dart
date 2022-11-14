extension StringFormatters on String {
  String get capitalize {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get threeDigitsId {
    return padLeft(3, '0');
  }
}
