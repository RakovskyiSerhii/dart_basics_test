import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:dart_basics/collections/char_counter.dart' as counter;

void main() {
  group('Test char_counter', () {
    test("Test string /'loop/'", () {
      expect(counter.count('loop'), {'l': 1, 'o': 2, 'p': 1});
    });
    test("Test string /'looper/'", () {
      expect(counter.count('looper'), {'l': 1, 'o': 2, 'p': 1, 'e': 1, 'r': 1});
    });
    test("Test string /'Hello world, Mychailo/'", () {
      expect(counter.count('Hello Mychailo'), {
              'H': 1,
              'e': 1,
              'l': 3,
              'o': 2,
              ' ': 1,
              'M': 1,
              'y': 1,
              'c': 1,
              'h': 1,
              'a': 1,
              'i': 1
            });
    });
  });
}
