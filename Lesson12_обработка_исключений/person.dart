import 'ageException.dart';

class Person {
  String name;
  int age = 1;

  Person(this.name, int age) {
    if (age < 1 || age > 120) {
      throw AgeException(age);
    }
    this.age = age; //если возраст корректный устанавливание его
  }
}