class ArithmeticRadioModel {
  final int first;
  final int second;

  ArithmeticRadioModel({required this.first, required this.second});

  int add() {
    return first + second;
  }

  int sub() {
    return first - second;
  }

  int mult() {
    return first * second;
  }

  double divide() {
    if (second == 0) {
      throw Exception("Cannot divide by zero");
    }
    return first / second;
  }
}
