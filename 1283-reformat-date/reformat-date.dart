enum Month {
  January('01'),
  February('02'),
  March('03'),
  April('04'),
  May('05'),
  June('06'),
  July('07'),
  August('08'),
  September('09'),
  October('10'),
  November('11'),
  December('12'),
  ;

  final String number;

  const Month(this.number);

  factory Month.fromString(String string) {
    switch (string) {
      case 'Jan':
        return Month.January;
      case 'Feb':
        return Month.February;
      case 'Mar':
        return Month.March;
      case 'Apr':
        return Month.April;
      case 'May':
        return Month.May;
      case 'Jun':
        return Month.June;
      case 'Jul':
        return Month.July;
      case 'Aug':
        return Month.August;
      case 'Sep':
        return Month.September;
      case 'Oct':
        return Month.October;
      case 'Nov':
        return Month.November;
      case 'Dec':
        return Month.December;
      default:
        throw ArgumentError('Invalid month string: $string');
    }
  }
}

class Solution {
  String reformatDate(String date) {
    final parts = date.split(' ');
    final day = parts[0];
    final month = parts[1];
    final year = parts[2];
    final regExp = RegExp(r'\d+');
    final match = regExp.firstMatch(day);
    final formattedDay =
        match!.group(0)!.length == 2 ? match.group(0) : '0${match.group(0)}';
    return '${year}-${Month.fromString(month).number}-${formattedDay}';
  }
}