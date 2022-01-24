
import 'dart:math';

import 'package:dart_basics/hw2_6/num_extensions.dart';
import 'package:test/test.dart';

void main() {
  var eps = 0.00000001;
  group('NumExtensions', () {
    test('3th root of 5', () {
      expect(
          5.ofRoot(3),
          closeTo(pow(5, 1/3), eps)
      );
    });
  });
}