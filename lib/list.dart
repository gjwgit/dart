void main() {
  List days = ['monday', 'tuesday', 'wednesday'];

  days.forEach(print);

  print(days.length);
  print(days.first);
  print(days.last);
  print(days.isEmpty);
  print(days.isNotEmpty);

  days.add('thursday');
  print(days.length);
}
