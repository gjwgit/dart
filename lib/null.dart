void main() {
  // Examples of using null.

  // Decleare a null initialised variable.

  int? myVar;

  print('Current value: $myVar');

  myVar = 42;

  print('Current value: $myVar');

  // In Dart the String type is non-nullable (it can’t be null).  The String?
  // type is nullable (it can be null). You will see an error if you try to
  // assign a nullable string (String?) to a non-nullable string (String). To
  // fix this you can use the null-aware operator ? to check if the value is
  // null before assigning it to the variable:

  String? nullableString = 'Hello';
  String nonNullableString = nullableString ?? '';

  // The null assertion operator ! can also be used to tell Dart that the value
  // certainly will not be null:

  String? nullableString = 'Hello';
  String nonNullableString = nullableString!;
}
