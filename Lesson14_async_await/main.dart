Future<int> sum(int a, int b) {
  return Future.sync(() => a + b);
}

Future<int> example() async {
  final a = await sum(1, 4);
  print(a);
  final b = await sum(a, 9);
  print(b);
  final c = await sum(b, a);
  print(c);
  return c;
}

void example2() async {
  [1,2,3,4,5,6,7,8,9].forEach((element) async{
    final a = await sum(element, 4);
    print(a);
    // final b = await sum(a, 9);
    // print(b);
    // final c = await sum(b, a);
    // print(c);
  });
}

//async await

void main()  {
  print('start');
  // example().then((value)=>print(value));
   example2();
  print('end');

//void main(){
//final a = sum(1, 4);
// a.then((a) {
// print(a);
// final b = sum(a, 9);
// b.then((b) {
// print(b);
// final c = sum(b, a);
// c.then((c) => print(c));
// });
// });
}
