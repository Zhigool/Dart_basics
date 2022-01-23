import 'package:dart_basics/hw2_6/get_gcd_function.dart';
import 'package:dart_basics/hw2_6/int_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("SIMPLE_MULTIPLIERS", () {
    test('НОД 12 и 9', () {
      expect(getGCD(12.getSimpleFactors(), 9.getSimpleFactors()), 3);
    });
    test('НОД 24 и 18', () {
      expect(getGCD(24.getSimpleFactors(), 18.getSimpleFactors()), 6);
    });
    test('НОД 28 и 16', () {
      expect(getGCD(28.getSimpleFactors(), 16.getSimpleFactors()), 4);
    });
    test('НОД 100 и 40', () {
      expect(getGCD(100.getSimpleFactors(), 40.getSimpleFactors()), 20);
    });
    test('НОД 72 и 128', () {
      expect(getGCD(72.getSimpleFactors(), 128.getSimpleFactors()), 8);
    });
  });
}