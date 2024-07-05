import 'ageException.dart';
import 'person.dart';

void main() {
  try {
    Person tom = Person('Tom', -45);
    print(tom.age);
  } on AgeException catch (e) {
    print(e);
    print(e.value);
  }
}
