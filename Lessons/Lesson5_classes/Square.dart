class Square {
  final int _side;

  int get lenght => _side;

  int get weight => _side;

  int get square => lenght * weight;

  Square(this._side);

  // Square(int side)
  //     : lenght = side,
  //       weight = side {
  //   print(lenght * weight);
  // }

 // Square.wrong(this.lenght, this.weight);

  @override
  String toString() {
    return 'Square{lenght: $lenght, weight: $weight}';
  }
}

void main() {
  final square1 = Square(40);
//  final square2 = Square.wrong(40, 5);
  print(square1._side);
  print(square1.weight);
  print(square1.lenght);
  print(square1.square);
}
