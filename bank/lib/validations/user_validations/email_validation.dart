String? emailValidation(String email) {
  final emailRegex = RegExp(
      r"^([a-zA-Z][a-zA-Z0-9._]+)@(gmail|outlook|hotmail)(\.com)(\.br)?$");

  if (emailRegex.hasMatch(email)) {
    return null;
  } else {
    return "the e-mail address you filled in is invalid";
  }
}
