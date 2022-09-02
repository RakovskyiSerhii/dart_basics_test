import 'package:dart_basics/staitments/staitments.dart' as staitments;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Test staitments', () {
    test('isEveryTrue must be false', () => expect(staitments.isEveryTrue(), false));
    test('isEveryFalse must be false', () => expect(staitments.isEveryFalse(), false));
    test('isFirstAndSecondFalse must be false', () => expect(staitments.isFirstAndSecondFalse(), false));
    test('isEveryFalse must be true', () => expect(staitments.isThirdAndFirstTrue(), true));
  });
}
