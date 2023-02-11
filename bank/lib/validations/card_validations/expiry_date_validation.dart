void main() {
  String expirydate = "12/2028";
  final exp = RegExp(r"^(([0-9]{1,2})(\/)([0-9]{4}))$");

  if (exp.hasMatch(expirydate)) {
    print("the card is valid");
  } else {
    print("the card is invalid");
  }
}
