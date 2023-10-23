enum Day { mon, tues, wed, thu, fri }

void main() {
  print(Day.values);
  print('${Day.values[4]}');
  print(Day.values.byName('fri'));
}
