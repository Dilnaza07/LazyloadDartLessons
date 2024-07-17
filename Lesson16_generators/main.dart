import 'dart:async';
import 'dart:collection';

//синхронный генератор
Iterable<int> generatorSync() sync* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

//Асинхронный генератор
Stream<int> generatorAsync() async* {
  yield 5;
  yield 7;

  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

//рекурсивный генератор
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

void main() {
  final result1 = generatorSync();
  print(result1);

  final result2 = generatorAsync();
  result2.listen((event) {
    print(event);
  });
  print('three');

  final result3 = naturalsDownFrom(10);
  print(result3);
}
