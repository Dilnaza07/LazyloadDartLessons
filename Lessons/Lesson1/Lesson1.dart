void main(List <String> args){

  var a = "";
  var b = null;

  var d = int.tryParse("source");

  print(d);
  print(a);
  print(b);

  int? r = null ;
  r = 5;

  var v = r + 5 ;
  print(v);

  dynamic w = int.tryParse('1'); //динамик тип
  var f = w as int; //изменение типа
  print(f);
}