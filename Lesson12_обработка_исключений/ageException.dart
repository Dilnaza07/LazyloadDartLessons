class AgeException implements Exception {
  int value;

  AgeException(this.value);

  @override
  String toString() => 'Недопустимый возраст';
}
