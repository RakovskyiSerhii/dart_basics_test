import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:dart_basics/tasks/recursion/recursion.dart' as recursion;

void main() {
  group("Testing the sum function", () {
    test("Testing result for 55 should be 1540", () {
      expect(recursion.sum(55), 1540);
    });
    test("Testing result for 30 should be 465", () {
      expect(recursion.sum(30), 465);
    });
    test("Testing result for 55 should be 0", () {
      expect(recursion.sum(-5), 0);
    });
    test("Testing result for 55 should be 1", () {
      expect(recursion.sum(1), 1);
    });
  });
}
