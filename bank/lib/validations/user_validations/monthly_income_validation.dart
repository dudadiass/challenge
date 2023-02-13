String? monthlyIncomeValidation(String monthlyIncome) {
  final monthlyIcomeRegx = RegExp(r"^(([\.0-9]+)(,)([0-9]{2})|(null))$");

  if (monthlyIcomeRegx.hasMatch(monthlyIncome)) {
    return null;
  } else {
    return "the monthly income is invalid";
  }
}
