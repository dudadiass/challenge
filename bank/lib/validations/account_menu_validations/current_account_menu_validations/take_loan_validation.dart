String? takeLoanValidation(double monthlyIncome) {
  if (monthlyIncome == 0) {
    return '\n[ERRO]: Não é possível realizar empréstimo pois você não tem renda mensal';
  } else {
    return null;
  }
}
