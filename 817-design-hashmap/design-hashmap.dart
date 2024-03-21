class Pair {
  Pair(this.key, this.value);
  final int key;
  int value;
}

class MyHashMap {
  MyHashMap();

  static const int _bucketSize = 1000;
  final List<List<Pair>> buckets = List.generate(_bucketSize, (_) => <Pair>[]);

  void put(int key, int value) {
    final hash = key % _bucketSize;
    final bucket = buckets[hash];
    for (var pair in bucket) {
      if (pair.key == key) {
        pair.value = value;
        return;
      }
    }
    bucket.add(Pair(key, value));
  }

  int get(int key) {
    final hash = key % _bucketSize;
    final bucket = buckets[hash];
    for (var pair in bucket) {
      if (pair.key == key) {
        return pair.value;
      }
    }
    return -1;
  }

  void remove(int key) {
    final hash = key % _bucketSize;
    final bucket = buckets[hash];
    bucket.removeWhere((pair) => pair.key == key);
  }
}