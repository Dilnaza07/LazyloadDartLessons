import 'dart:io';
import 'dart:math';

void main() {
  var result = 0;
  for (int i = 0; i < 10; i++) {
    result += i;
  }
  print(result);

  for (int i = 10; i > 0; i -= 2) {
    print(i);
  }

  final listOfChar = ['a', 'b', 'c', 'd', 'f'];
  for (int i = 0; i < listOfChar.length; i++) {
    print('$i: ${listOfChar[i]}');
  }

  for (var element in listOfChar.asMap().entries) {
    print('$element');
  }

  for (var element in listOfChar.reversed) {
    print('$element');
  }

  final listOfInt = [2, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int i = 0; i < listOfInt.length; i++) {
    if (listOfInt[i] % 2 == 0) {
      //listOfInt[i]*=2;
      listOfInt.removeAt(i);
    }
  }
  print(listOfInt);
//цикл for выполняется определенное кол-во шагов
  for (var element in listOfInt) {
    element += 1;
    var a = 0;
    a += element;
    print(a);
  }
  print(listOfInt);

//цикл while, выполняется пока верно условие, в отличие от фора где кол-во итераций точно определено
  //когда не знают точное количество шагов
  //отслеживает внешние условия кот ты не контролируешь

  var heartRitm = 1;
  var rnd = new Random();

  while (heartRitm < 1) {
    print('vse horosho');
    heartRitm = rnd.nextInt(200);
  }
  print('vse ploho');

//do while

  do {
    print('vse horosho2');
    heartRitm = 1;
  } while (heartRitm < 1);

  while(true){
    print('Введите строку');
    String str = stdin.readLineSync() ?? '';
    print('Вы ввели $str');}
}
