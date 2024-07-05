import 'dart:io';

void main() {
  print(1);
  final result = File("C:/Flutter/lazyLoad/file.txt").readAsString();
  print(2);
  result.then((value) => print(value));
  print(3);

  final url = Uri.parse('https://metanit.com/dart/tutorial/7.1.php');
  final futurePage = HttpClient().getUrl(url);
  futurePage.then((value)=>print(value));

  final f1 = Future.delayed(Duration(seconds: 2));
  f1.whenComplete(()=>print(1));
  final f2 = Future.delayed(Duration(seconds: 5));
  f2.whenComplete(()=>print(2));


  final f3 = Future.wait([f1,f2]);
  f3.then((value)=>print(4));
}
