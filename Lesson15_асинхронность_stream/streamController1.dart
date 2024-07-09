

import 'dart:async';

StreamController <int> controller = StreamController<int>();

StreamSubscription <int>? subscription;

void main(){

  print('one');
  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.add(4);
  controller.add(5);
  print('two');

  subscription = controller.stream.listen((event){print(event);});
  print('three');
  controller.add(6);
  controller.add(7);
  controller.add(8);
  controller.add(9);
  controller.add(10);

  Future.delayed(Duration(seconds: 3),(){
    controller.add(11);
    subscription?.cancel();
    controller.add(12);
    controller.close();
    //controller.add(13);
  });
}