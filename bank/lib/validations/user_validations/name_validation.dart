String? nameValidation(String name) {
  final nameRegex = RegExp(r"^([a-zA-Z]{3,})( )([a-zA-Z]{2,}( ?))+$");

  if (nameRegex.hasMatch(name)) {
    return null;
  } else {
    return "the name is invalid";
  }
}
