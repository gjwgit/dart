void main() {
  // Anonymous functions do not include a name for the function.

  // Set a value that we will work with.

  int value = 42;

  // Basic anonymous function (a closure) with implicit return type. Here, the
  // anonymous function is the `(num) => ...`. It is assigned to a variable
  // v1Squared. Looks a lot like a normal function definition. This arrow
  // notation can be used if the function contains only a single expression or
  // return statement.

  int v1Squared(num) => num * num;
  int v1Cubed(num) => num * num * num;

  // Anonymous function using an explicit body and return. The anonymous
  // function here is `(num) { ... }`

  int v2Squared(num) {
    return num * num;
  }

  int v2Cubed(num) {
    return num * num * num;
  }

  print(v1Squared);
  print('$value squared is ${v1Squared(value)}');
  print('$value cubed is ${v1Cubed(value)}');
  print(v2Squared);
  print('$value squared is ${v2Squared(value)}');
  print('$value cubed is ${v2Cubed(value)}');

  print('10 squared is ${[10].map((num) => num * num)}');

  // This is a more typical example of an anonymose function. Here we define an
  // anonymos function with an untype parameter `day`. The function is defined
  // with a single paramter `day` and the body which simply prints the index and
  // weekday: `(day) { ...}`. The function is invoked for each element in the
  // list, `days`.

  var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];

  days.forEach((day) {
    print('${days.indexOf(day)} : $day');
  });

  // Another example of two anonymous functions, the first is passed to the
  // `map()` function and converts the supplied day as a parameter to
  // uppercase. The result is a list of upercase weekdays. The second anonymous
  // function also has the parameter day and a body that prints the day and the
  // length of the day name.

  days.map((day) {
    return day.toUpperCase();
  }).forEach((day) {
    print('$day: ${day.length}');
  });
}
