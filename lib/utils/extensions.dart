extension StringExtensions on String {
  String get capitalize {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String splitAndCapitalize(String splitBy) {
    return split(splitBy).map((name) => name.capitalize).join(' ');
  }
}
