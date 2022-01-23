import 'dart:math';

class Point {
  final int x;
  final int y;
  final int z;

  const Point({
    required this.x,
    required this.y,
    required this.z
  });

  double distanceTo(Point another) {
    return sqrt(
        pow(another.x - x, 2) +
            pow(another.y - y, 2) +
                pow(another.z - z, 2)
    );
  }

  factory Point.origin() {
    return Point(x: 0, y: 0, z: 0);
  }
}