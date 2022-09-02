Map<String, int> count(String str) {
  final Map<int, int> characters = {};
  for (var element in str.runes) {
    characters[element] = 1 + (characters[element] ?? 0);
  }

  return characters
      .map((key, value) => MapEntry(String.fromCharCode(key), value));
}