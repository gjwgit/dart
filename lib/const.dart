void main() {
  var monthsInYear = 12;
  const daysInYear = 365;

  print('There are $daysInYear days and $monthsInYear months in a year.');

  monthsInYear = monthsInYear - 1;

  // The following will result in an error.

  // daysInYear = daysInYear - 1;
}
