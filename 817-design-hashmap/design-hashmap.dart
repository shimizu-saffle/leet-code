class MyHashMap {
  static const int _bucketSize = 1000;
  final List<List<(int key, int value)>> buckets =
      List.generate(_bucketSize, (_) => []);

  void put(int key, int value) {
    final hash = key % _bucketSize;
    final bucket = buckets[hash];
    for (var i = 0; i < bucket.length; i++) {
      final (pairKey, _) = bucket[i];
      if (pairKey == key) {
        bucket[i] = (key, value);
        return;
      }
    }
    bucket.add((key, value));
  }

  int get(int key) {
    final hash = key % _bucketSize;
    final bucket = buckets[hash];
    for (final pair in bucket) {
      final (pairKey, pairValue) = pair;
      if (pairKey == key) {
        return pairValue;
      }
    }
    return -1;
  }

  void remove(int key) {
    final hash = key % _bucketSize;
    final bucket = buckets[hash];
    bucket.removeWhere((pair) => pair.$1 == key);
  }
}
