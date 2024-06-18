import 'dart:io';

void main() {
  final a = 0;

  if (a == 5) {
    print('5');
  } else if (a == 4) {
    print('4');
  } else {
    print('не 4 и не 5');
  }
  ;

  print('Введите число: ');

  final line = stdin.readLineSync() ?? '';
  final num = int.tryParse(line);

  if (num != null) {
    if (num == 6) {
      print('угадал');
    } else if (num < 6) {
      print('Слишком мало');
    } else {
      print('Слишком много');
    }
  } else {
    print('Я же сказал введи число!!!');
  }

  switch(num){
    case 6 : print("ygadal");
    case 3 : print("clishkom malo");
    default: print("xz xz");
  }
}
