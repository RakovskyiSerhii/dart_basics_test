
import 'package:dart_basics/examples/patterns/singleton/singleton.dart';

void main() {
  final Singleton singleton = Singleton();
  final NonSingleton nonSingleton = NonSingleton();
  print(
      'singleton.num = ${singleton.num}, nonSingleton.num = ${nonSingleton.num}');

  final Singleton secondSingleton = Singleton();
  secondSingleton.num = 10;
  final NonSingleton secondNonSingleton = NonSingleton();
  secondNonSingleton.num = 10;
  print(
      'singleton.num = ${singleton.num}, nonSingleton.num = ${nonSingleton.num}');
}
