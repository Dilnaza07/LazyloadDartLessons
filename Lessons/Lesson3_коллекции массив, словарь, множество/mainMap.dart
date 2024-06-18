void main() {
  final Map<String, int> listOfInt = {
    '1': 34,
    '2': 345566,
    '3': 4356,
    '1': 9999
  };
  print(listOfInt);



  final listOfPeople = [
    "Ivanov Ivan",
    "Sidorov Sidor",
    "Petrov Petr",
    "Vasilev Vasiliy",
  ];

  final Map mapOfPeople = {
    '0102 334455': "Ivanov Ivan",
    '0102 334466': "Sidorov Sidor",
    '0102 334477': "Petrov Petr",
    '0102 334488': "Vasilev Vasiliy",
  };

  final setOfPeople = {
    // "Ivanov Ivan",
    // "Ivanov Ivan",
    // "Sidorov Sidor",
    // "Petrov Petr",
    "Vasilev Vasiliy",
  };

  final aOfPeople = {
    // "Ivanov Ivan",
    // "Ivanov Ivan",
    "Sidorov Sidor",
    // "Petrov Petr",
    // "Vasilev Vasiliy",
  };


  print(listOfPeople);
  print(mapOfPeople);
  print(mapOfPeople.containsKey('0102 334477')); //проверка есть ли такой ключ
  mapOfPeople['0102 334499'] = "jhgjhb"; //добавление элемента в мапу
  print(mapOfPeople);
  print(setOfPeople);

  final result = setOfPeople.intersection(aOfPeople); //пересечение, общее в новый сет
  final result2 = setOfPeople.union(aOfPeople); //обьединение
  final result3 = setOfPeople.difference(aOfPeople); //чего нет во втором
  final result4 = setOfPeople.union(aOfPeople); //обьединение
  print(result3);

  //List для хранения и с каждым эл применить операции по очереди, упорядочить сортировать и тд
  // Map как хранилище и быстро находить добавлять или удалять, перебор медленный
  //если в мапе не находит элемент или ключ он не падает а вернет null
  //Set хранит уникальные значения, работает как мапа

  //лист - для перебора
  //мапа - быстро достать значение по ключу
  //сет - хранить уникальные значения и проверять есть ли эл-т или нет
}
