/// Examples of using the switch statement and expression.
///
/// Also see [DescribeDate] and [calculateArea] and [Shape].

void main() {
  // A simple example of `switch` based on the last digit of the secondes from
  // the time now.

  int obs = DateTime.now().second % 10;

  print(obs);

  // As of Dart 3.0 each branch no longer needs a `break`.

  switch (obs) {
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    case 3:
      print('Wednesday');
    case 4:
      print('Thursday');
    case 5:
      print('Friday');
    default:
      print('Non-weekday $obs');
  }

  // Dart 3 introduces patterns.

  switch (obs) {
    case > 0 && <= 2:
      print("Early week");
    case 3:
      print("Mid week");
    case > 3 && <= 5:
      print("Late week");
    case 6 || 7:
      print("Weekend");
    default:
      print("Beyond a week");
  }

  // Dart 3 expressions - NOT WORKING

  print(switch (obs) { 1 => "<= 3", 4 || 5 || 6 => "4-6", _ => ">3" });
}
