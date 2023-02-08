void main() {
  final name = "Eduarda Dias";
  final expp = RegExp(r"^([a-zA-Z]{3,})( )([a-zA-Z]{2,}( ?))+$");

  if (expp.hasMatch(name)) {
    print("the name is valid");
  } else {
    print("the name is invalid");
  }
}
