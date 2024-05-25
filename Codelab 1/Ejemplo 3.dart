/**************Ejemplo 3, Crear patron factory*******************/

import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  @override
  num area;
  @override
  num radius;

  CircleMock({required this.area, required this.radius});

  @override
  String toString() => 'CircleMock(radius: $radius, area: $area)';
}

void main() {
  final circle = Shape('circle');
  final square = Shape('square'); 
  print(circle.area);
  print(square.area);
  final mockCircle = CircleMock(area: 60, radius: 5);
  print(mockCircle);
  print('Mock Circle area: ${mockCircle.area}');
}
