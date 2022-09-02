class Calculator {
  int operation(int a, int b, int Function(int a, int b) operation) {
    throw NoSuchMethod();
  }
}

class Actions {
  static int plus(int a, int b) => throw NoSuchMethod();
  static int minus(int a, int b) => throw NoSuchMethod();
  static int multiply(int a, int b) => throw NoSuchMethod();
  static int divide(int a, int b) => throw NoSuchMethod();
}

void main() {
  final Calculator calculator = Calculator();
  // TODO: define all actions in [Actions]
  // TODO: define [operation] method in [Calculator]
}

class NoSuchMethod implements Exception {}
