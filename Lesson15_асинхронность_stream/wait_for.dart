//Stream = поток
//Thread = поток
import 'dart:async';

Stream<int>? stream;
StreamSubscription<int>? subscription;

void main() async {
  print('one');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);
  print('two');
  await for (var item in stream!) { //нельзя остановить стрим не лучший синтаксиз
    print(item);
  }
  print('three');

  Future.delayed(Duration(seconds: 10), () {
    subscription?.cancel();
  });
}
