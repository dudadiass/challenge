void main() {
  final phone = "(41) 997826946";
  final exp = RegExp(r"^(\(?[1-9]{2}\)? ?)([0-9]{5})?(-)?([0-9]{4})$");

  if (exp.hasMatch(phone)) {
    print("the phone is valid");
  } else {
    print("the phone is invalid");
  }
}
