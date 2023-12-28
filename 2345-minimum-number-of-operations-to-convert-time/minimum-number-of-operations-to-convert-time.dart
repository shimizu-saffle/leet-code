class Solution {
  int convertTime(String current, String correct) {
    final currentParts = current.split(':');
    final correctParts = correct.split(':');

    final currentHour = int.parse(currentParts[0]);
    final currentMinute = int.parse(currentParts[1]);
    final currentTotalMinute = (currentHour * 60) + currentMinute;

    final correctHour = int.parse(correctParts[0]);
    final correctMinute = int.parse(correctParts[1]);
    final correctTotalMinute = (correctHour * 60) + correctMinute;

    int gap = correctTotalMinute - currentTotalMinute;
    var count = 0;
    while (gap > 0) {
      if (gap >= 60) {
        gap = gap - 60;
      } else if (gap >= 15) {
        gap = gap - 15;
      } else if (gap >= 5) {
        gap = gap - 5;
      } else if (gap >= 1) {
        gap = gap - 1;
      }
      count++;
    }
    return count;
  }
}
