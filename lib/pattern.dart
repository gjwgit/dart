/// Examples of using data patterns.
///
/// Also see [DescribeDate] for another example of using patterns.

import 'dart:math' as math;

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

// Now use patterns for a switch. Her we switch on the pattern of the data
// passed in as shape.

double calculateArea(Shape shape) => switch (shape) {
      Square(length: double l) => l * l,
      Circle(radius: double r) => r * r * math.pi
    };

main() {
  print('Area of Square(5): ${calculateArea(Square(5))}');
  print('Area of Circle(5): ${calculateArea(Circle(5))}');
}
