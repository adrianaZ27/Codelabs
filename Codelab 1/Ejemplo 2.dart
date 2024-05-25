/**************Ejemplo 2, Usar parametros opcionales*******************/

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() => '($x, $y)';
}

class Rectangle {
  final Point origin;
  final int width;
  final int height;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

@override
String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';}

void main() {
  var rect1 = Rectangle(origin: Point(10, 20), width: 100, height: 200);
  var rect2 = Rectangle(origin: Point(10, 10));
  var rect3 = Rectangle(width: 200);
  var rect4 = Rectangle();

  print(rect1);
  print(rect2);
  print(rect3);
  print(rect4);
}
