//Stream = поток
//Thread = поток
import 'dart:async';

Stream<int>? stream;
StreamSubscription<int>? subscription1;
StreamSubscription<int>? subscription2;

//нельзя подписаться на один и тот же стрим дважды
//можно если он имеет тип asBroadcastStream

void main() {
  print('one');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => tick).asBroadcastStream();
  print('two');
  subscription1 = stream?.listen((event) {
    print(event);
  });
  subscription2 = stream?.listen((event) {
    print(event);
  });
  print('three');

  Future.delayed(Duration(seconds: 10), () {
    subscription1?.cancel();
    subscription2?.cancel();
  });
}
