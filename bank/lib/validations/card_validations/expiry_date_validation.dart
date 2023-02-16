String? expiryDateValidation(String expiryDate) {
  final expiryDateRegex =
      RegExp(r"^(([1-9]{1,1})?([0-9]{1,1})(\/)([0-9]{4}))$");

  if (expiryDateRegex.hasMatch(expiryDate) && dateIsValid(expiryDate)) {
    return null;
  } else {
    return "the card has expired";
  }
}

List<int> dateSplitted(String date) {
  return date.split('/').map((e) => int.parse(e)).toList();
}

bool dateIsValid(String date) {
  var ds = dateSplitted(date);
  int yearProvided = ds[1];
  int monthProvided = ds[0];
  int actualMonth = DateTime.now().month;
  int actualYear = DateTime.now().year;
  int expiryYear = actualYear + 6;

  if (yearProvided > actualYear &&
          yearProvided <= expiryYear &&
          monthProvided <= 12 ||
      yearProvided == actualYear &&
          monthProvided > actualMonth &&
          monthProvided <= 12) {
    return true;
  } else {
    return false;
  }
}
