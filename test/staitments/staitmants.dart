import 'package:dart_basics/tasks/staitments/staitments.dart' as staitments;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Test staitments', () {
    test('isEveryTrue must be false',
        () => expect(staitments.isEveryTrue(), false));
    test('isEveryFalse must be false',
        () => expect(staitments.isEveryFalse(), false));
    test('isFirstAndSecondFalse must be false',
        () => expect(staitments.isFirstAndSecondFalse(), false));
    test('isEveryFalse must be true',
        () => expect(staitments.isThirdAndFirstTrue(), true));

    test(
        'check registration for mail@mail.com and 12345678, not registered should be true',
        () => expect(
            staitments.checkStaitments('mail@mail.com', '123456789', false), true));

    test(
        'check registration for mail and 12345678, not registered should be false',
            () => expect(
            staitments.checkStaitments('mail', '12345678', false), false));

    test(
        'check registration for mail@mail.com and 1, not registered should be false',
            () => expect(
            staitments.checkStaitments('mail@mail.com', '1', false), false));

    test(
        'check registration for empty email and password, but registered should be false',
            () => expect(
            staitments.checkStaitments('', '', true), true));

    test(
        'check registration for ma-il@mail.com and 12345678, not registered should be false',
            () => expect(
            staitments.checkStaitments('ma-il@mail.com', '123456789', false), false));
  });
}
