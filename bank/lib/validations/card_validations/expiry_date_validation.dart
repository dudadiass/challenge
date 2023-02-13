String? expiryDateValidation(String expiryDate) {
  final expiryDateRegex =
      RegExp(r"^(([1-9]{1,1})?([0-9]{1,1})(\/)([0-9]{4}))$");

  if (expiryDateRegex.hasMatch(expiryDate) && dateIsValid(expiryDate)) {
    return null;
  } else {
    return "the card is invalid";
  }
}

List<int> dateSplitted(String date) {
  return date.split('/').map((e) => int.parse(e)).toList();
}

bool dateIsValid(String date) {
  dynamic month = dateSplitted(date);
  int monthProvided = month[0];

  dynamic year = dateSplitted(date);
  int yearProvided = year[1];
  int actualYear = DateTime.now().year;
  int expiryYear = actualYear + 6;

  if (yearProvided > actualYear &&
      yearProvided <= expiryYear &&
      monthProvided <= 12) {
    return true;
  } else {
    return false;
  }
}
