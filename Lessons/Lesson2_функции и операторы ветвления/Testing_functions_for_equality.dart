void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

//void Function(init)

void main() {
  Function x;

  // Comparing top-level functions.
  x = foo;
  assert(foo == x);}

  // Comparing static methods.