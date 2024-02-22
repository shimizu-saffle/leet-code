enum Log {
  child,
  parent,
  current,
  ;

  factory Log.fromString(String string) {
    switch (string) {
      case '../':
        return Log.parent;
      case './':
        return Log.current;
      default:
        return Log.child;
    }
  }
}

class Solution {
  int minOperations(List<String> logs) {
    var currentDepth = 0;
    for (final log in logs) {
      switch (Log.fromString(log)) {
        case Log.child:
          currentDepth++;
        case Log.parent:
          currentDepth > 0 ? currentDepth-- : currentDepth += 0;
        case Log.current:
          break;
      }
    }
    return currentDepth;
  }
}
