abstract class Things {
  final double weight;

  Things(this.weight);

  void put();
}

abstract class Posduable {
  void put();

  void fill();
}

abstract class Weightable {
  final double weight;

  Weightable(this.weight);
}

class Cup extends Things {
  Cup(super.weight);

  @override
  void put() {
    // TODO: implement put
  }

}

class Glass extends Things {
  Glass(super.weight);

  @override
  void put() {
    print('put Glass');
  }
}

class Plate extends Things {
  Plate(super.weight);

  @override
  void put() {
    print('put plate');
  }
}

class Table extends Things {
  Table(super.weight);

  @override
  void put() {
    print('put table');
  }
}

void main() {
  final cup = Cup(14.5);
  print(cup.weight);
}
