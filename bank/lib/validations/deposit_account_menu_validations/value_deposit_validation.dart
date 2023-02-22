String? valueDepositValidation(double value) {
  if (value > 5000) {
    return '\n[ERRO]: O valor não pode exceder 5000';
  } else if (value <= 0) {
    return '\n[ERRO]: O valor não pode ser nulo ou negativo';
  }
  return null;
}
