void main() {
  final mIncome = "3.000,00";
  final exp = RegExp(r"^(([\.0-9a-zA-Z]+)(,)([0-9]{2})|(null))$");

  if (exp.hasMatch(mIncome)) {
    print("the monthly income is valid");
  } else {
    print("the monthly income is invalid");
  }
}
