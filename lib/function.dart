/// This is the main() entry point.

void main() {
  showCurrentDateTime();
}

/// A simple function with no parameters and a void (i.e., no) return value.

void showCurrentDateTime() {
  var localTime = DateTime.now();

  print('Local: $localTime');
}
