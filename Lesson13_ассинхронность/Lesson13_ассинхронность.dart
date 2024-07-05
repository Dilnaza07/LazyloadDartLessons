import 'dart:io';

void download() {}

void main() {
  download();
  final a = 5 + 5;
  final b = a + 8;
  print(b);

  print(1);
  print(2);
  print(3);
  Future awaitingFuture = Future.delayed(Duration(seconds: 1));
  awaitingFuture.then((_) => print(4)); //колбек
  print(5);
  print(6);
  print(7);

  for(var i = 0; i<9999;i++){
    print(1);
    sleep(Duration(seconds: 1));
  }
}

//многопоточность два действия делать одновременно
//асинхронность не ждать результат чего то, выполнить когда то потом, через 3 минуты,
// или когда будет загружена информация
