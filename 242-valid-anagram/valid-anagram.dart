class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    final sMap = Map<int, int>();
    final sList = s.split('');
    for (final e in sList) {
      if (sMap[e.hashCode] == null) {
        sMap[e.hashCode] = 1;
      } else {
        sMap[e.hashCode] = (sMap[e.hashCode] ?? 0) + 1;
      }
    }

    final tMap = Map<int, int>();
    final tList = t.split('');
    for (final e in tList) {
      if (tMap[e.hashCode] == null) {
        tMap[e.hashCode] = 1;
      } else {
        tMap[e.hashCode] = (tMap[e.hashCode] ?? 0) + 1;
      }
    }

    final sKeys = sMap.keys.toList();
    final tKeys = tMap.keys.toList();
    for (final sK in sKeys) {
      if (!tKeys.contains(sK)) {
        return false;
      }
      if (sMap[sK] != tMap[sK]) {
        return false;
      }
    }

    return true;
  }
}
