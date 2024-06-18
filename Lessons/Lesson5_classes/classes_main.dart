void main() {
  final employeoneName = 'Ivan';
  final employeoneSurname = 'Ivanov';

  final Employee one = Employee('Ivan', 'Ivanov', '0104 546655', 45,
      [100, 100, 100, 200, 200, 200, 300], 6); //экземпляр обьект класса

  final Employee two = Employee('Kuzma', 'Kuzmin', '0104 546666', 35,
      [100, 100, 100, 200, 200, 200, 300], null); //экземпляр обьект класса

  final Employee three = Employee('Ivan', 'Ivanov', '0104 546655', 45,
      [100, 100, 100, 200, 200, 200, 300], 6); //экземпляр обьект класса


  one.age;

  print(one);
  print(two);
  print(one.name);
  one.name = 'dfh';
  print(one.name);

  final list = [one, three];

  final result = one.middleSalary();
  two.middleSalary();
  print(result);

  print(one==two);
  print(one==three);
}

class Employee {
  String name;
  final String surname;
  final String pasport;
  final int age;
  final List<int> salary;
  final int? lenght;

  Employee(this.name, this.surname, this.pasport, this.age, this.salary,
      this.lenght);

  double middleSalary() {
    if (salary.isEmpty) {
      return 0;
    }
    return salary.reduce((value, element) => value += element) / salary.length;
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Employee &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          surname == other.surname &&
          pasport == other.pasport &&
          age == other.age &&
          salary == other.salary &&
          lenght == other.lenght;



  @override
  String toString() {
    return 'Employee{name: $name, surname: $surname, pasport: $pasport, age: $age, salary: $salary, lenght: $lenght}';
  }
}
/*
* имя
* фамилия
* отчество
* паспорт серия и номер
* возраст
* зарплата по месяцам
* */

/*
* Не в классе     в классе
*
* функция     =    метод (особенность: имеет переменную this которая указывает на обьект у которого был вызван метод)
* переменная  =  свойство*/

