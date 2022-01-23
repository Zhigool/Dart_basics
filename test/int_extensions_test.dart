import 'package:dart_basics/hw2_6/int_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('getSimpleFactors', () {

    test('factors of 0', () {
      expect(0.getSimpleFactors(), [0]);
    });

    test('factors of 1', () {
      expect(1.getSimpleFactors(), [1]);
    });

    test('factors of 2', () {
      expect(2.getSimpleFactors(), [2]);
    });

    test('factors of 24', () {
      expect(24.getSimpleFactors(), [2, 2, 2, 3]);
    });

    test('factors of 18', () {
      expect(18.getSimpleFactors(), [2, 3, 3]);
    });

    test('factors of 15', () {
      expect(15.getSimpleFactors(), [3, 5]);
    });
  });

  group('intToBinary', () {
    test('int to binary 1002', () {
      expect(1002.toBinary(), '1111101010');
    });
  });
}
