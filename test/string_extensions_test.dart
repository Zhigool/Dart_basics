import 'package:dart_basics/hw2_6/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('StringExtensions', () {
    test('nums in "1"', () {
      expect("1".getNums(), [1]);
    });
    test('nums in "1 10"', () {
      expect("1 10".getNums(), [1, 10]);
    });
    test('nums in "1 1.05"', () {
      expect("1 1.05".getNums(), [1, 1.05]);
    });
    test('nums in "-1 2.21 0"', () {
      expect("-1 2.21 0".getNums(), [-1, 2.21, 0]);
    });
  });
}