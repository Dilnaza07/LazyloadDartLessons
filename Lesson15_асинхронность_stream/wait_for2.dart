//Stream = поток
//Thread = поток
import 'dart:async';

Stream<int>? stream;

Future<void> listenOne() async {
  await for (var item in stream!) {
    print(item);
  }
}

Future<void> listenTwo() async {
  await for (var item in stream!) {
    print(item);
  }
}

void main() async {
  print('one');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => tick).asBroadcastStream();
  print('two');
  listenOne();
  print('three');
  listenTwo();
}
