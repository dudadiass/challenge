void main() {
  final password = "20224567";
  final exp = RegExp(r"^([0-9]{8,8})?$");

  if (exp.hasMatch(password)) {
    print("the password is valid");
  } else {
    print("the password is invalid");
  }
}
