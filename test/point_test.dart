import 'dart:math';

import 'package:dart_basics/hw2_6/point.dart';
import 'package:test/test.dart';

void main() {
  group('Point.distanceTo()', () {
    test('distance between A(-1, 3, 3) и B(6, 2, -2)', () {
      expect(
          const Point(x: -1, y: 3, z: 3).distanceTo(
              const Point(x: 6, y: 2, z: -2)
          ),
          closeTo(5 * sqrt(3), 0.0000001)
      );
    });
    test('get origin', () {
      expect(
          Point.origin().distanceTo(
              const Point(x: 0, y: 0, z: 0)
          ),
          closeTo(0.0, 0.0000001)
      );
    });
  });
}