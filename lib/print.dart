void main() {
  int intVar = 10;
  bool boolVar = true;

  // The type of the variable `today` is determined automatically, at runtime?

  var today = DateTime.now();

  print(intVar);

  // A variable can be substituted into a string:

  print('Using \$ within a string: $intVar');
  print('The Boolean variable is: $boolVar');

  // The content within the curly brackets is run to obtain the value that is
  // inserted into the string.

  print('Today is day number ${today.weekday}');
}
