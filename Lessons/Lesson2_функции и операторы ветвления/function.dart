//простейшая функция
int myAge() {
  return 32;
}

int a = 4; //глобальная область видимости

int sum(int b) => a + b; //функции работают с переменными в своей области видимости где они обьявлены

void main(List<String> args) {
  int a = 0;
  final result = sum(6);
  print(result);

  print(a); //0 область видимости main

  /* Глобальная область видимости
  *   |fun main
  *     |fun sum2
  *       |sum
  * */

  final age = myAge();
  print(age);
}
