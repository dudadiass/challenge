String? nameValidation(String? name) {
  if(name == null){
    return 'name is required';
  }
  final nameRegex = RegExp(r"^([a-zA-Z]{3,})( )([a-zA-Z]{2,}( ?))+$");

  if (nameRegex.hasMatch(name)) {
    return null;
  } else {
    return "the name filled in is incorrectly";
  }
}
