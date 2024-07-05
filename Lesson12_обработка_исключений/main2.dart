import 'main.dart';

void main() {
  try {
    int x = 9;
    int y = 0;
    int z = x ~/ y; //целочисленное деление
    print(z);
  } on IntegerDivisionByZeroException catch (e, s) {
    print('Обработка исключения $e');
    print('Стек $s');
  } on Error {
    print('Обработка ошибки в блоке on');
  } finally {
    print('Завершение программы');
  }
}
