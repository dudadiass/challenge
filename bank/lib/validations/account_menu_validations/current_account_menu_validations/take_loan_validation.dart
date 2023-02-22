String? takeLoanValidation(double value, double monthlyIncome) {
  double twenty = monthlyIncome * 0.2;
  double seventy = monthlyIncome * 0.7;
  if (monthlyIncome == 0) {
    return '\n[ERRO]: Não é possível realizar empréstimo pois você não tem renda mensal';
  } else if (value < twenty || value > seventy) {
    return '\n[ERRO]: Não é possível realizar empréstimo com o valor informado';
  } else {
    return null;
  }
}
