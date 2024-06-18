//простейшая функция
int timesTwo(int x) {
  return x * 2;
}

int timesFour(int x) => timesTwo(timesTwo(x));

int runTwice(int x, int Function(int) f) {
  for (var i = 0; i < 2; i++) {
    x = f(x);
  }
  return x;
}

void main(List<String> args) {
  print(timesTwo(4));
  print(timesFour(4));
  print(runTwice(2, timesTwo));
  final result = runTwice(
      2, (x) => x + x); //создание однострочной функции прямо в др функции
  print(result);

  // ф-ю можно положить в переменную, sum это функция
  final sum = (int a, int b){
    return a + b;
  };

  sum(1,4);
}
