import 'package:dart_basics/hw2_6/iterable_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('countWords', () {
    test('count words in ["a", "a", "b"]', () {
      expect(["a", "a", "b"].countWords(), {
        "a": 2,
        "b": 1
      });
    });
  });
}