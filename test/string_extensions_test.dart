import 'package:dart_basics/hw2_6/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('getNums', () {
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

  group('getIntList', () {
    test('ints in "one, two, three, cat, dog"', () {
      expect("one, two, three, cat, dog".getIntList(delimiter: ", "), [1, 2, 3]);
    });
    test('ints in "one, two, zero, zero"', () {
      expect("one, two, zero, zero".getIntList(delimiter: ", "), [1, 2, 0]);
    });
    test('ints in "one, two, zero, zero, hi"', () {
      expect("one, two, zero, zero, hi, nine".getIntList(delimiter: ", "), [1, 2, 0, 9]);
    });
  });
}