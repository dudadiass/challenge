String? passwordValidation(String password) {
  final passwordRegex = RegExp(r"^([0-9]{8,8})?$");

  if (passwordRegex.hasMatch(password)) {
    return null;
  } else {
    return "the password is invalid";
  }
}
