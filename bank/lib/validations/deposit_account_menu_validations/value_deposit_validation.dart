String? valueDepositValidation(double value) {
  if (value > 5000) {
    return 'O valor não pode exceder 5000. Operação cancelada';
  } else if (value <= 0) {
    return '[ERRO]: O valor não pode ser nulo ou negativo';
  }
  return null;
}
