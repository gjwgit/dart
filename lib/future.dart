void main() async {
  int delay = 5;

  print('Hello');

  var value = await _customDelay(delay);
  var customText = delay == 1 ? "second later" : "seconds later";

  print('Its $value $customText');
}

Future<int> _customDelay(int delay) async {
  try {
    await Future.delayed(Duration(seconds: delay));
    return delay;
  } catch (e) {
    print(e);
    return delay;
  }
}
