class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    final counts = Map<int, int>();
    for (final codePoint in s.runes) {
      counts[codePoint] = (counts[codePoint] ?? 0) + 1;
    }

    for (final codePoint in t.runes) {
      if (!counts.containsKey(codePoint) || counts[codePoint] == 0) {
        return false;
      }
      counts[codePoint] = counts[codePoint]! - 1;
    }

    return true;
  }
}
