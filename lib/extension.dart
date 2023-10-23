/// Extend the [DateTime] class with a describe().

/// A demonstration of an `extension` to a pre-existing class. This also
/// demonstrates the use of a data `pattern` with `switch`.

extension DescribeDate on DateTime {
  /// Describe a date relative to today, printing the reuslt.

  void describe() {
    final now = DateTime.now();
    final difference = this.difference(DateTime(now.year, now.month, now.day));

    // Use a switch on a data pattern.

    String description = switch (difference) {
      Duration(inDays: -1) => "yesterday",
      Duration(inDays: 0) => "today",
      Duration(inDays: 1) => "tomorrow",
      Duration(inDays: int d, isNegative: false) => "${d} days from now",
      Duration(inDays: int d, isNegative: true) => "${d.abs()} days ago",
    };

    print('$year/$month/$day is $description');
  }
}

/// call describe() to illustrate different options.

main() {
  DateTime(2023, 7, 30).describe();
  DateTime(2023, 7, 31).describe();
  DateTime(2023, 7, 29).describe();
  DateTime(2023, 7, 23).describe();
  DateTime(2023, 8, 23).describe();
}
