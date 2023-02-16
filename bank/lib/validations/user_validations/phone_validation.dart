String? phoneValidation(String phone) {
  final phoneRegex = RegExp(r"^(\(?[1-9]{2}\)? ?)([0-9]{5})(-)?([0-9]{4})$");

  if (phoneRegex.hasMatch(phone)) {
    return null;
  } else {
    return "the telephone number you filled in is invalid";
  }
}
