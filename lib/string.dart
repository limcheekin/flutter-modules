extension StringExtension on String {
  // REF: https://gist.github.com/filiph/d4e0c0a9efb0f869f984317372f5bee8
  String toTitleCase() {
    final text = this;

    if (text == null) throw ArgumentError('string: $text');

    if (text.isEmpty) return text;

    return text
        .split('_')
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }
}
