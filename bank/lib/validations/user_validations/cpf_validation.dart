void main() {
  String cpf = "141.939.889-02";
  final exp = RegExp(r'^(([0-9]{3})\.([0-9]{3})\.([0-9]{3})\-([0-9]{2}))$');

  if (exp.hasMatch(cpf)) {
    print("the cpf is valid");
  } else {
    print("the cpf is invalid");
  }
}
