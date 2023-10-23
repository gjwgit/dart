void main() {
  const int offset = -7;

  DateTime now = getDateTime(0);
  DateTime earlier = getDateTime(offset);

  print('The time now is: $now');
  print('The time $offset hours is: $earlier');
}

DateTime getDateTime(int offset) {
  DateTime now = DateTime.now();
  DateTime when = now.add(Duration(hours: offset));
  return when;
}
