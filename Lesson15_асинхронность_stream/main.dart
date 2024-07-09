//Stream = поток
//Thread = поток
import 'dart:async';

Stream<int>? stream;
StreamSubscription<int>? subscription;

void main() {
  print('one');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);
  print('two');
  subscription = stream?.listen((event) {
    print(event);});

    Future.delayed(Duration(seconds: 5), () {
      subscription?.pause();
    });

    Future.delayed(Duration(seconds: 10), () {
      subscription?.resume();
    });

    Future.delayed(Duration(seconds: 15), () {
      subscription?.cancel();
    });

}
