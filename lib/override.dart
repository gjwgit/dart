/// A demonstration of the use of the @override annotation.
///
/// The use of @override annotation is optional.

void main() {
  WebDeveloper webDev = WebDeveloper();
  print(webDev.location);
  print(webDev.salary);
  webDev.develop();

  OverDeveloper overDev = OverDeveloper();
  print(overDev.location);
  print(overDev.salary);
  overDev.develop();

  StringDeveloper stringDev = StringDeveloper();
  print(stringDev.location);
  print(stringDev.salary);
  stringDev.develop();
}

/// A base class with a [develop] method.

class Developer {
  String location = 'Colombo';
  int salary = 33000;
  void develop() {
    print('Developing an application');
  }
}

class WebDeveloper extends Developer {}

class OverDeveloper extends Developer {
  @override
  void develop() {
    print('Developing web application');
  }
}

/// TODO This was trying to override the toString used in the print?

class StringDeveloper extends Developer {
  @override
  String toString() => 'Salary is $salary';
}
