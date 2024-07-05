class incorrectIntString {
  final String incorrectString;

  incorrectIntString(this.incorrectString);

  @override
  String toString() {
    return 'Нельзя преобразовать строку в int. Некорректная строка $incorrectString';
  }
}

class divisionByZero {
  @override
  String toString() {
    return 'Произошло деление на ноль';
  }
}

class NegativeDouble {
  final double incorrectDouble;

  NegativeDouble(this.incorrectDouble);

  @override
  String toString() {
    return 'Число является отрицательным. Значение числа: $incorrectDouble}';
  }
}

double div(String a, String b) {
  final aa = int.tryParse(a);
  final bb = int.tryParse(b);

  if (aa == null) {
    throw incorrectIntString(a);
  }
  if (bb == null) {
    throw incorrectIntString(b);
  }
  if (bb == 0) {
    throw divisionByZero();
  }

  try {
    final result = inSquare(aa / bb);
    return result + 5;
  } catch (error) {
    throw NegativeDouble(aa / bb);
  }


}

double inSquare(double a) {
  if (a < 1) {
    throw NegativeDouble(a);
  }
  return a * a;
}

void main() async {
  try {
    //открыть файл Х
    print('aaaa');
    final a = div('5', '-3');
    final b = a + 6;
    print(b);
  } on divisionByZero catch (error) {
    print(error);
  } on incorrectIntString catch (error) {
    print(error);
  } catch(error){
    print('Неопознанная ошибка: $error');
  }finally {
    print('finally, закрыть файл Х');
  }
}
