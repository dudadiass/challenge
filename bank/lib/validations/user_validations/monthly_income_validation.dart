String? monthlyIncomeValidation(monthlyIncome) {
  final monthlyIcomeRegx = RegExp(r"^([0-9]+)(,)([0-9]{2})$");
  if (monthlyIncome.trim().isEmpty) {
    return null;
  }

  if (monthlyIcomeRegx.hasMatch(monthlyIncome)) {
    return null;
  } else {
    return "the monthly income is invalid";
  }
}
