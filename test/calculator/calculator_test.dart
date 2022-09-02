import 'package:dart_basics/tasks/calculator/calculator.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Test Calculator working properly', () {
    final Calculator calculator = Calculator();
    test('Test 3+6 must be 9', () {
      expect(calculator.operation(3, 6, Actions.plus), 3 + 6);
    });
    test('Test 3-6 must be -3', () {
      expect(calculator.operation(3, 6, Actions.minus), 3 - 6);
    });
    test('Test 3*6 must be 18', () {
      expect(calculator.operation(3, 6, Actions.multiply), 3 * 6);
    });
    test('Test 9/3 must be 3', () {
      expect(calculator.operation(9, 3, Actions.divide), 9 ~/ 3);
    });
  });
}
