class Solution {
  int convertTime(String current, String correct) {
    int timeToMinutes(String time) {
      final parts = time.split(':');
      return int.parse(parts[0]) * 60 + int.parse(parts[1]);
    }

    int gap = timeToMinutes(correct) - timeToMinutes(current), count = 0;
    const operations = [60, 15, 5, 1];

    for (final op in operations) {
      while (gap >= op) {
        gap -= op;
        count++;
      }
    }

    return count;
  }
}