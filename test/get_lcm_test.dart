import 'package:dart_basics/hw2_6/get_lcm.dart';
import 'package:dart_basics/hw2_6/int_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("SIMPLE_MULTIPLIERS", () {
    test('НОД 12 и 9', () {
      expect(getLCM(12.getSimpleFactors(), 9.getSimpleFactors()), 36);
    });
    test('НОД 50 и 180', () {
      expect(getLCM(50.getSimpleFactors(), 180.getSimpleFactors()), 900);
    });
    test('НОД 24 и 12', () {
      expect(getLCM(24.getSimpleFactors(), 12.getSimpleFactors()), 24);
    });
    test('НОД 36 и 48', () {
      expect(getLCM(36.getSimpleFactors(), 48.getSimpleFactors()), 144);
    });
  });
}