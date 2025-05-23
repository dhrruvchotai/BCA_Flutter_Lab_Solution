import 'dart:math';
// in Dart, this is not allowed—you cannot define multiple methods with the same name and different parameters.
// This is not method overloading, but a workaround using distinct method names and named parameters to simulate it.
class AreaCalculator {  
  // Area of Circle
  static double area({required double radius}) {
    return pi * radius * radius;
  }

  // Area of Triangle
  static double areaTriangle({required double base, required double height}) {
    return 0.5 * base * height;
  }

  // Area of Square
  static double areaSquare({required double side}) {
    return side * side;
  }
}

void main() {
  // Circle
  double circleArea = AreaCalculator.area(radius: 5);
  print("Area of Circle: ${circleArea.toStringAsFixed(2)}");

  // Triangle
  double triangleArea = AreaCalculator.areaTriangle(base: 4, height: 6);
  print("Area of Triangle: ${triangleArea.toStringAsFixed(2)}");

  // Square
  double squareArea = AreaCalculator.areaSquare(side: 3);
  print("Area of Square: ${squareArea.toStringAsFixed(2)}");
}
