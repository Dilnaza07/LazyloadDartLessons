import 'dart:math';

enum Color {
  Red,
  Green,
  Blue;
}

abstract class Shape {
  double get square;
  final Color color;

  Shape(this.color);

  @override
  String toString() {
    // TODO: implement toString
    return "$square $color";
  }
}

class Rectangle extends Shape {
  final int sideA;
  final int sideB;
  final int sideC;

  @override
  double get square => (sideA * sideB * sideC).toDouble();

  Rectangle(this.sideA, this.sideB, this.sideC, super.color);

  @override
  String toString() {
    return super.toString() + ' Rectangle {sideA: $sideA, sideB: $sideB, sideC: $sideC}';
  }
}

class Circle extends Shape {
  final int radius;

  Circle(this.radius, super.color);

  @override
  double get square => (pi * radius * radius).toDouble();
}

class Square extends Shape {
  final int side;

  Square(this.side, super.color);

  @override
  double get square => (side * side).toDouble();
}

void main() {
 // final shape = Shape(Color.Blue);
  final rectangle = Rectangle(10, 3, 99, Color.Green);
  final circle = Circle(6, Color.Red);
  final square = Square(9, Color.Green);

 // print(shape);
  print(rectangle);
  print(circle);
  print(square);

  final list = [rectangle,circle,square];
  print(list.first.square);
}
