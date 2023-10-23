/// This is the main() entry point.

void main() {
  showDateTime();
  showDateTime(offset: -8);
  showDateTime(offset: 4);
}

/// A simple function with one NAMED OPTIONAL parameter and a void (i.e., no) return value.

void showDateTime({int offset = 0}) {
  var timeNow = DateTime.now();
  var timeThen = timeNow.add(Duration(hours: offset));

  // A fixed padding amount determined as 1 longer than the longest likely
  // string from the conditional below.

  const pad = 18;

  // Use a CONDITIONAL EXPRESSION to determine the output string.

  final tense = offset < 0
      ? '$offset hours ago was'.padRight(pad)
      : offset == 0
          ? 'now is'.padRight(pad)
          : '$offset hours hence is'.padRight(pad);

  print('The time $tense $timeThen');
}
