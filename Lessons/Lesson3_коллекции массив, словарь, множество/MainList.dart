
void main() {
  final a = 4;
  final listOfInt = [1, 21, 2, 3, 4, 5, 6 + 3, 7, a];

  print(listOfInt.runtimeType);

  if (listOfInt.isNotEmpty) {
    //проверка пуст ли список
    print(listOfInt.first);
    print(listOfInt.last);
  } else {
    print('Список пуст');
  }

  if (listOfInt.length >= 16) {
    //проверка пуст ли список
    print(listOfInt[0]);
    print(listOfInt[15]);
  } else {
    print('Список пуст');

    print(listOfInt);
    print(listOfInt.reversed); //разворачивает список, создает новый лист
    // print(listOfInt.single);

    final Object d = 4;
    List<Object> myList = [1, 2, d];

    myList.add(7);
    myList.addAll([1, 2, 3]);
    print(myList);
    print(myList.first.runtimeType);
    print(myList.runtimeType);

    //final newList = myList as List <int>; //ошибка
    final newList2 = myList.cast<int>(); //каждый элемент массива в int
    final f = newList2.first + 3;
    myList.fillRange(0, 2,10);
    print(myList);

   final newList3 =  myList.getRange(1, 3);
    print(newList3);

    final listOfInts = [1,2,3,4,5];
    final ffff = [1,2,3,4,5];

    listOfInts.firstOrNull;
    listOfInts.forEach((element){
      print(element * 3);
    });
    print(listOfInts);


    final list = const [1,2,3,45,5]; //константа, нельзя поменять значение
    //list.add(66); //Unhandled exception:Unsupported operation: Cannot add to an unmodifiable list
    print(list);

    final result = list.join(','); //перевел все в строку, склеил через ,
    print(result);

   // ListEquality().equals();

    final fff = list.map((e)=> e + 5).toList(); //пройдет по всем эл-там и ввернет новый список
    print(fff);

    final fff2 = list.reversed;
  }
}
