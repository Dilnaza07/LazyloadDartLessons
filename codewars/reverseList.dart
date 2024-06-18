void main() {
  var list = [1, 2, 3, 4, 5];
  var result = reverseList4(list);
  print(result);
}

List<int> reverseList(List<int> list) {
  List<int> sum = [];
  for (int i = list.length - 1; i >= 0; i--) {
    sum.add(list[i]);
  }
  return sum;
}

List<int> reverseList2(List<int> list) => [...list.reversed];


List<int> reverseList3(List<int> list) {
  // // Easy Solution
  // return list.reversed.toList();
  // Another solution
  return [for (int i = list.length; i > 0; i--) list[i - 1]];
}

List<int> reverseList4(List<int> list) {
  return list.reversed.toList();
}
