void main() {
  // Examples of the use of `final`.

  // A `final` variable is assigned its value at runtime.

  final today = DateTime.now();

  print('Today is day number ${today.weekday}');
  print(today);

  // This error is picked up at build time and with `dart analyze`, demonstrated
  // by the fact that the above `print()` do not run before the error is picked
  // up.

  // today = today - 1;
}
