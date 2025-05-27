class Shape {
  void colorShape() {
    print("Coloring the shape...");
  }
}
class Circle extends Shape {
  @override
  void colorShape() {
    print("Coloring the circle with red color.");
  }
}
void main() {
  Shape shape = Shape();
  shape.colorShape();
  Circle circle = Circle();
  circle.colorShape();
}
