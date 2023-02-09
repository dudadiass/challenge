void main() {
  final emails = 'dudadias.1783@gmail.com.br';
  final exp = RegExp(
      r"^[a-zA-Z][a-zA-Z0-9._]+(@gmail|@outlook|@hotmail)+(.com)(.br)?$");

  if (exp.hasMatch(emails)) {
    print("the email is valid");
  } else {
    print("the email is invalid");
  }
}
