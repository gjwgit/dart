/// This is the main() entry point.

void main() {
  showOtherDateTime(-7);
  showOtherDateTime(2);
}

/// A simple function with one parameter and a void (i.e., no) return value.

void showOtherDateTime(int hourDifference) {
  var timeNow = DateTime.now();
  var timeThen = timeNow.add(Duration(hours: hourDifference));

  final tense = hourDifference < 0 ? 'ago was' : 'in the future is';

  print('The time $hourDifference hours $tense $timeThen');
}
