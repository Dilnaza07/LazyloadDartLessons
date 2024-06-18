void main() {
  final b = sum(1, 6, 10, 10);
  print(b);

  final a = makeUser(name: 'Ivan', surname: 'Ivanov', age: 12);
  print(a);

  final a2 = makeUser(name: 'Ivan', surname: 'Ivanov', age: 12);
  print(a2);

  var user = User(name: 'Ivan', surname: 'Ivanov', age: 14);
  print(user.name);
}

int sum(int a, int b, [int c = 0, int d = 90]) {
  //необязательные аргументы имеют значения по умолчанию
  return a + b + c + d;
}

String makeUser(
    {required String name,
    required String surname,
    required int age,
    String passport = ''}) {
  return '$name $surname $age $passport';
}

String makeOldUser(String name, String surname, int age,
    [String passport = '']) {
  return '$name $surname $age $passport';
}

String makeUser3(int a, int b,
    {required String name,
    required String surname,
    required int age,
    String passport = ''}) {
  return '$name $surname $age $passport';
}

class User {
  final String name;
  final String surname;
  final int age;
  final String passport;

  User({required this.name, required this.surname, required this.age, this.passport = ''});
}

/* 3 вида аргументов функций
* 1 - неименованные обязательные аргументы
* 2 - [] неименованные обязательные
* 3 - именованные обязательные required и необязательные
*
* обязательные арг нужно ставить вначале потом необязательные
* необязательные аргументы имеют значения по умолчанию*/
