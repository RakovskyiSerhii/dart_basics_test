class Singleton {
  Singleton._();
  static Singleton? _instance;

  factory Singleton() {
    _instance ??= Singleton._();
    return _instance!;
  }

  int num = 0;
}

class NonSingleton {
  int num = 0;
}
